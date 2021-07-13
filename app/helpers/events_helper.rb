module EventsHelper
  def event_des(description)
    desArr = description.split(" ")
    if desArr.length > 20
      desArr = desArr[0..20].join(" ")
      continue ="..."
      desArr = continue.prepend(desArr)
      desArr
    else
      desArr = desArr.join(" ")
      desArr
    end  
  end

  def detect_event_status(date)
    time_format = date.strftime("%Y-%m-%dT%I:%M:%SZ")
    event_date_timestamp = DateTime.rfc3339(time_format).to_time.to_i
    current_timestamp = Time.now.to_i
    if current_timestamp  > event_date_timestamp
      "Inactive"
    else
      "Active"
    end
  end
end
