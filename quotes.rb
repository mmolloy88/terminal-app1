
class Quotes
    attr_accessor :string, :author

    def initialize(string, author)
        @string = string
        @author = author
    end
end

Quotes_list = [
Quotes.new("Act as if what you do makes a difference. It does.", "William James"),
Quotes.new("Success is not final, failure is not fatal: it is the courage to continue that counts.", "Winston Churchill"),
Quotes.new("Never bend your head. Always hold it high. Look the world straight in the eye.", "Helen Keller"),
Quotes.new("What you get by achieving your goals is not as important as what you become by achieving your goals.", "Zig Ziglar"),
Quotes.new("Believe you can and you're halfway there.", "Theodore Roosevelt")
]

