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
end
