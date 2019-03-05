class Word
    def initialize(movie)
        @movie = movie.split("")
        @input = @input
    end

    def splitWord
        @movie.each do |char|
            @chars = char.gsub(char, " _ ")
            print @chars
        end
    end

    def checkLetter(input)
        @movie.each do |x|
            if input == x
                print "Nice!"
            else
                print "Boo!"
            end
        end
    end
end