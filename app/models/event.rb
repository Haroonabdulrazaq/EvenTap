class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :eventType, presence: true

  def self.detect_event_status(date)
   time_format = date.strftime("%Y-%m-%dT%I:%M:%SZ")
   event_date_timestamp = DateTime.rfc3339(time_format).to_time.to_i
   current_timestamp = Time.now.to_i
    if current_timestamp  > event_date_timestamp
      "Past"
    else
      "Active"
    end
  end

  def self.event_date(date)
    time_format = date.strftime("%Y-%m-%d %I:%M:%S")
    time_format
  end
end
