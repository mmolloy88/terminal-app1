require "pastel"
require "tty-prompt"
require "tty-box"

prompt = TTY::Prompt.new(enable_color: true)
pastel = Pastel.new

diary_entry = true

    def diary_entry

    end



print TTY::Box.frame("
Welcome to the terminal diary!

note: this is an ANTI-social media app, for
subjective use, you can choose to share your
thoughts if you'd like!!")


pastel.blue(prompt.keypress("Press space to continue
", 
keys: [:space],))

print "We'll start with 3 basic yes or no questions.
"

    prompt.yes?(
        "Did you put aside enough time for yourself today? ")

    prompt.yes?(
        "Was today a stressful day? ")

    prompt.yes?(
        "Did you accomplish what you wanted today? ")

print "thank you for your feedback!"


prompt.keypress(
"Press space to continue", 
keys: [:space])

def scale(input)

    prompt.ask("
        On a scale of 1 - 10 how would you rate you day? 
        ").to_i
       

            if gets.chomp >= 7
                print "That's great"
                # if response is 7 or greater return a simple "that's great"
                # before next step
            elsif gets.chomp < 3
                print "perhaps it would be better to speak with your family or a professional"
                # if the response is lower than 3, suggest that maybe the user
                # should speak to family, friends or a professional
            
            else print "that's good to hear"
                # if the response is between 4 and 7, put "you're doing ok"
       
            end

        
end

scale(input)

# return here if the user chooses to write another entry

# print "thank you for your response, would you like to
#         write about your day? it can be a word or 2, or 
#         a full on essay, no pressure: "



# prompt.ask

# prompt.ask "Would you like to write another entry? (y/n): "
#     input = gets.chomp
#     if input != "y"
#         diary_entry = false
#     end





