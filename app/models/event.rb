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
      "Inactive"
    else
      "Active"
    end
  end

  def self.event_date(date)
    date_format = date.strftime("%Y-%m-%d %H:%M") 
    date_format 
  end

  def self.search_by(search_term)
    where('LOWER(name) LIKE :search_term',
          search_term: "%#{search_term.downcase}%")
  end
end
