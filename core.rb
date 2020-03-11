require "pastel"
require "tty-prompt"
require "tty-box"
require "./quotes.rb"


prompt = TTY::Prompt.new(enable_color: true)
pastel = Pastel.new

diary_entry = true


print TTY::Box.frame("
Welcome to the terminal diary!

note: this is an ANTI-social media app, for
subjective use, you can choose to share your
thoughts if you'd like!!")


prompt.keypress("Press space to continue
",
keys: [:space],)

print pastel.blue"We'll start with 3 basic yes or no questions.
"

# save entries to the below responses

# y_or_n = prompt.yes?

    prompt.yes?(
        "Did you put aside enough time for yourself today? ")

    prompt.yes?(
        "Was today a stressful day? ")

    prompt.yes?(
        "Did you accomplish what you wanted today? ")

puts pastel.blue "thank you for your feedback!
                "


prompt.keypress(
"Press space to continue", 
keys: [:space])

input = prompt.ask("
On a scale of 1 - 10 how would you rate you day? 
").to_i

            if input >= 11
                puts "you must be having a really great day!!"
            elsif input >= 7
                puts "That's great!! "
                # if response is 7 or greater return a simple "that's great"
                # before next step
            elsif input < 3
                puts "perhaps it would be better to speak with your family or a professional "
                # if the response is lower than 3, suggest that maybe the user
                # should speak to family, friends or a professional
            else puts "that's good to hear "
                # if the response is between 4 and 7, put "you're doing ok"
       
            end


# return here if the user chooses to write another entry
while(diary_entry == true)

    print TTY::Box.frame(
        "thank you for your responses, would you like to
            write about your day? it can be a word or 2, or 
            a full on essay, no pressure: ")

entry = gets.chomp

p (Quotes_list.sample.quote_str)


puts pastel.blue "Would you like to write another entry? (yes/no)"
    input = gets.chomp
    if input != "y"
        diary_entry = false
    end

end



