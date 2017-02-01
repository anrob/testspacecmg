
json.array!(@contracts) do |user|

user
json.title user.eventtime + " " + user.first_name + " " + user.last_name + " " + user.act_code
json.start user.date_of_event.iso8601
json.end user.date_of_event.iso8601
json.color "#5173DA"
json.description user.contract_number
json.url contract_path(user)
end