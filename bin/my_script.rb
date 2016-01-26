require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts'
  # query_values: {fname: "Ginny", lname: "Weasley", school_id: 1}
).to_s


puts RestClient.get(url)
#
# def create_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
#
#
#   puts RestClient.post(
#     url,
#     {user: {name: "Senor Lettuce", email: "green@leafy.com"} }
#   )
# end

#
# begin
#   create_user
# rescue RestClient::Exception
#   puts "422, brah"
# end


# url2 = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts.json'
#   # query_values: {fname: "Ginny", lname: "Weasley", school_id: 1}
# ).to_s
#
# puts RestClient.get(url2, {contacts: {name: "that guy", email: "guy@guyson.com", user_id: 1}})
