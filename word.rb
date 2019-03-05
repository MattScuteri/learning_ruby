class Word
    def initialize(movie)
        movie.split("")
        @movie = ["_ " * movie.length] 
    end

    def splitWord
        puts @movie
    end

    def checkLetter(input)
        @movie.each do |x|
            if input == x
            
            else

            end
        end
    end
end