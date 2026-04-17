class Client < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[name description]
  acts_as_taggable_on :tags

  # default_scope { order(:id) }

  scope :ordered, -> { order(poids: :desc) }
end
