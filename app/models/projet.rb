# frozen_string_literal: true

class Projet < ApplicationRecord
  include PgSearch::Model

  multisearchable against: %i[nom contenu]

  acts_as_taggable_on :tags
  acts_as_ordered_taggable_on :tags

  default_scope { order("poids DESC") }
end
