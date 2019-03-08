class Word
    def initialize(movie)
        @movie = movie
        @split_word = movie.upcase.split('')
        @movieArray = ''
        @guesses = []
        for i in 0...@split_word.length
            @movieArray = @movieArray << "_ "
        end
        @split_word_length = @split_word.length
    end

    def splitWord
        puts @movieArray
    end

    def checkLetter(input)
        if /#{input}/ =~ @movie
            for x in 0...@split_word_length
                if(@split_word[x] == input)
                    @movieArray[x] = input
                end
            end
        end
        # @guesses.push(input.chomp)
        # print @guesses
    end
end