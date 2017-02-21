
json.array!(@contracts) do |user|

user
json.title user.caldes
json.start user.date_of_event.iso8601
json.end user.date_of_event.iso8601
json.color "#5173DA"
json.description user.contract_number
json.url contract_path(user)
end