require 'net/http'
require 'json'
require './word.rb'

movies = []

File.open('./movies.txt').each do |movie|
    movies.push(movie.to_s)
end

selected_movie = movies.sample
puts selected_movie

puts "Welcome to James Bond Movie Hangman!"
puts "For a plot clue, type 'hint'"

url = "http://www.omdbapi.com/?t=#{selected_movie}&apikey=trilogy"
uri = URI(url)
response = Net::HTTP.get(uri)
parsed_response = JSON.parse(response)

user_input = gets.chomp

Word.new(selected_movie)

case user_input
when "hint"
    puts parsed_response["Plot"]
=begin
when user inputs a letter that matche
    YAAAAAAAAY
when user inputs a letter that doesn't
    BOOOOOOOOO
=end
end
