# satisfy_dependencies(["users", "orgs"])

# fred = User.where(email: "fred.schoeneman@bacchan.al").first

# fred.positions.create!(org_id: Org.first.id, tenure_start: Date.today - 3.months, title: "Proprietor")

# # alisa = User.where(email: "alisa.mathewson@bacchan.al").first
# # alisa.positions.create(org_id: Org.first.id, tenure_start: (Date.today - 3.months), tenure_end: (Date.today - 1.week), title: "Biology & Ecology Intern")


# # positionables = %w[winery producer competition]

# # positionables.each do |positionable|

# #   pm = positionable.classify.constantize

# #   titles = %w[winemaker sales farmer owner labor bookkeeper]

# #   pm.all[0..2].each do |object|

# #     user_ids = User.pluck(:id)

# #     5.times do 

# #       begin_date = (Date.today - rand(1..1000).days)
# #       end_date = (begin_date + rand(1..6).years)
# #       Position.create!(
# #         user_id: user_ids.sample,
# #         positionable_id: object.id,
# #         positionable_type: object.class.name,
# #         title: titles.sample,
# #         tenure_start: begin_date,
# #         tenure_end: end_date
# #       )
# #     end
# #   end
# # end
