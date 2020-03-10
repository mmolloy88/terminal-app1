require "pastel"
require "tty-prompt"
require "tty-box"

prompt = TTY::Prompt.new(enable_color: true)
pastel = Pastel.new


    def diary_entry

    end



print TTY::Box.frame("
Welcome to the terminal diary!

note: this is for subjective use, you can choose to
share your thoughts if you'd like!!")


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



    prompt.ask("
        On a scale of 1 - 10 how would you rate you day? 
        ")







