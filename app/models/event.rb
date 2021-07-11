class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :eventType, presence: true
end
