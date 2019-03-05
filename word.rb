class Word
    def initialize(movie)
        movie_char = movie.split("")

        movie_char.each do |char|
            print char.gsub(char, " _ ")
        end
    end
end