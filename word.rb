class Word
    def initialize(movie)
        movie = @movie
        @movie.split("")
        @guesses = []
        @movieArray = ["_ " * movie.length]
    end

    def splitWord
        puts @movieArray
    end

    def checkLetter(input)
        @guesses.push(input)
        @guesses.each do |x|
            if @movie.include? x
                print x
            else
                print '_ '
            end
        end
    end
end