# Change these
server '107.170.238.64', port: 22, roles: [:web, :app, :db], primary: true

set :repo_url,        'git@github.com:schadenfred/bacchanal.git'
set :application,     'bacchanal'
set :user,            'deploy'
set :puma_threads,    [4, 16]
set :puma_workers,    0

# Don't change these unless you know what you're doing
set :pty,             true
# set :use_sudo,        false
# prevent sudo prompting for password
# set :sudo_prompt, ""
set :stage,           :production
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord

## Defaults:
# set :scm,           :git
# set :branch,        :master
# set :format,        :pretty
# set :log_level,     :debug
# set :keep_releases, 5

## Linked Files & Directories (Default None):
# set :linked_files, %w{config/database.yml}
# set :linked_dirs,  %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs,  %w{public/assets}

# ## nginx

# # Server name for nginx, space separated values
# # No default value
# set :nginx_domains, "foo.bar.com foo.other.com"

# # Redirected domains, all these will have a permanent redirect to the first of :nginx_domains
# # No default value
# set :nginx_redirected_domains, "bar.com other.com"

# # Sudo usage can be enables on task and/or path level.
# # If sudo is enabled for a specific task (i.e. 'nginx:site:add') every
# # command in that task will be run using sudo priviliges.
# # If sudo is enables for a specific path (i.e. :nginx_sites_enabled_dir)
# # only command manipulating that directory will be run using sudo privileges.
# # Note: When options overlap, sudo is used if either option permits it.
# #
# # Everything is run as sudo per default.
set :nginx_sudo_paths, [] #[:nginx_log_path, :nginx_sites_enabled_dir, :nginx_sites_available_dir]
set :nginx_sudo_tasks, [] #['nginx:start', 'nginx:stop', 'nginx:restart', 'nginx:reload', 'nginx:configtest', 'nginx:site:add', 'nginx:site:disable', 'nginx:site:enable', 'nginx:site:remove' ]

# # nginx service script
# # Defaults to using the 'service' convinience script.
# # You might prefer using the init.d instead depending on sudo privilages.
# # default value: "service nginx"
# set :nginx_service_path, "/etc/init.d/nginx"

# # Roles the deploy nginx site on,
# # default value: :web
# set :nginx_roles, :web

# # Path, where nginx log file will be stored
# # default value:  "#{shared_path}/log"
# # set :nginx_log_path, "#{shared_path}/log"

# # Path where to look for static files
# # default value: "public"
# set :nginx_static_dir, "my_static_folder"

# # Path where nginx available site are stored
# # default value: "/etc/nginx/sites-available"
# set :nginx_sites_available_dir, "/opt/nginx/sites-available"

# # Name of file stored in site-enabled/available
# # default value: "#{fetch :application}"
# set :nginx_application_name, "#{fetch :application}-#{fetch :stage}"

# # Path where nginx available site are stored
# # default value: "/etc/nginx/sites-enabled"
# set :nginx_sites_enabled_dir, "/opt/nginx/sites-enabled"

# # Path to look for custom config template
# # `:default` will use the bundled nginx template
# # default value: :default
# set :nginx_template, "#{stage_config_path}/#{fetch :stage}/nginx.conf.erb"

# # Use SSL on port 443 to serve on https. Every request to por 80
# # will be rewritten to 443
# # default value: false
# set :nginx_use_ssl, false

# # Name of SSL certificate file
# # default value: "#{application}.crt"
# set :nginx_ssl_certificate, 'my-domain.crt'

# # SSL certificate file path
# # default value: "/etc/ssl/certs"
# set :nginx_ssl_certificate_path, "#{shared_path}/ssl/certs"

# # Name of SSL certificate private key
# # default value: "#{application}.key"
# set :nginx_ssl_certificate_key, 'my-domain.key'

# # SSL certificate private key path
# # default value: "/etc/ssl/private"
# set :nginx_ssl_certificate_key_path, "#{shared_path}/ssl/private"

# # You can set a timeout value in seconds
# # nginx's default is 30 seconds
# set :nginx_read_timeout, 30

# # Whether you want to server an application through a proxy pass
# # default value: true
# set :app_server, true

# # Socket file that nginx will use as upstream to serve the application
# # Note: Socket upstream has priority over host:port upstreams
# # no default value
# set :app_server_socket, "#{shared_path}/sockets/unicorn-#{fetch :application}.sock"

# # The host that nginx will use as upstream to server the application
# # default value: 127.0.0.1
# set :app_server_host, "127.0.0.1"

# # The port the application server is running on
# # no default value
# set :app_server_port, 8080


namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do
  desc "Make sure local git is in sync with remote."
  task :check_revision do
    on roles(:app) do
      unless `git rev-parse HEAD` == `git rev-parse origin/master`
        puts "WARNING: HEAD is not the same as origin/master"
        puts "Run `git push` to sync changes."
        exit
      end
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end
  
  desc "Invoke rake task"
  task :invoke do
    on roles(:app) do
      within "#{current_path}" do
        with rails_env: :production do
          execute :rake, ENV['task']
          # !!!see NOTE at end of answer!!!
        end
      end
    end
  end

  before :starting,     :check_revision
  after  :finishing,    :compile_assets
  after  :finishing,    :cleanup
  after  :finishing,    :restart
end

# ps aux | grep puma    # Get puma pid
# kill -s SIGUSR2 pid   # Restart puma
# kill -s SIGTERM pid   # Stop puma

