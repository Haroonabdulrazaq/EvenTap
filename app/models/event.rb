class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true


  enum eventType: { 
    "Free" => 0,
    "Paid" => 1,
  }
end
