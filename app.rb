require 'net/http'
require 'json'
require './word.rb'

movies = []

File.open('./movies.txt').each do |movie|
    movies.push(movie.to_s)
end

selected_movie = movies.sample
# puts selected_movie.upcase

puts "Welcome to James Bond Movie Hangman!"
puts "For a plot clue, type 'hint'"

url = "http://www.omdbapi.com/?t=#{selected_movie}&apikey=trilogy"
uri = URI(url)
response = Net::HTTP.get(uri)
parsed_response = JSON.parse(response)

new_word = Word.new(selected_movie.upcase.chomp)
guesses = 10

while guesses > 0
    new_word.splitWord
    puts guesses
    user_input = gets.chomp

    if user_input == "hint"
        puts parsed_response["Plot"]
    else
        new_word.checkLetter(user_input.upcase)
        guesses -= 1
    end
end
