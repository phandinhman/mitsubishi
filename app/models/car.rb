class Car < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  scope :highlight, -> {where is_highlight: true}
end
