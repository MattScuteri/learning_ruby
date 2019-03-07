class Word
    def initialize(movie)
        print movie.upcase.split("")
        @movie = movie.upcase.split("")
        @guesses = []
        @movieArray = ["_ " * movie.length]
    end

    def splitWord
        puts @movieArray
    end

    def checkLetter(input)
        @movie.each do |x|
            if input == x
                print x
            else
                print "_ "
            end
        end
    end
end