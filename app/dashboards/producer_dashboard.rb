require "administrate/base_dashboard"

class ProducerDashboard < Administrate::BaseDashboard
  READ_ONLY_ATTRIBUTES = [
    :id,
    :created_at,
    :updated_at,
  ]

  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    addresses_addressables: Field::HasMany,
    addresses: Field::HasMany,
    roles: Field::HasMany,
    owned_taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
    owned_tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag"),
    articles: Field::HasMany,
    categories: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    comments: Field::HasMany,
    positions: Field::HasMany,
    products: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    type: Field::String,
    slug: Field::String,
    properties: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    blog_title: Field::String,
  }

  # TABLE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to remove the limit or customize the returned array.
  TABLE_ATTRIBUTES = ATTRIBUTE_TYPES.keys.first(4)

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = ATTRIBUTE_TYPES.keys - READ_ONLY_ATTRIBUTES
end
