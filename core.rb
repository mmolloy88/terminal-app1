require "pastel"
require "tty-prompt"
require "tty-box"
require "./classes.rb"

prompt = TTY::Prompt.new(enable_color: true)
pastel = Pastel.new
diary_entry = true
summary = Summary.new

box = TTY::Box.frame(width:55, height:13, align: :center, title: {top_left: 'TERMINAL DIARY', bottom_right: '++++'}) do "\nWelcome to the terminal diary!\n 
    note: this is an ANTI-social media app, for subjective use,\n 
    you can choose to share your thoughts if you'd like,\n\n 
    but you don't have to!!" 

end

print pastel.yellow box

prompt.keypress("Press space to continue\n", keys: [:space],)

print pastel.blue"We'll start with 3 basic yes or no questions.\n
"

# save entries to the below responses

    summary.u_time = prompt.yes?(pastel.yellow"Did you put aside enough time for yourself today?")

    summary.u_stress = prompt.yes?(pastel.yellow"Was today a stressful day? ")

    summary.u_goal = prompt.yes?(pastel.yellow"Did you accomplish what you wanted today? ")

puts pastel.blue "\n thank you for your feedback!\n"

prompt.keypress("Press space to continue\n\n", keys: [:space])

summary.input = prompt.ask(pastel.blue"On a scale of 1 - 10 how would you rate you day?

 1 being a bad day & 10 being a great one: ").to_i

            if summary.input >= 11
                puts "\nyou must be having a really great day!! \n\n"
            elsif summary.input >= 7
                puts "\nThat's great!! \n\n"
                # if response is 7 or greater return a simple "that's great"
                # before next step
            elsif summary.input <= 3
                puts pastel.red TTY::Box.frame"   perhaps it would be better to speak with your family  
    or a professional, if you are having a really tough 
    time there's also organisations like beyond blue    
    on 1300 22 4636 that are there to help \n "
                # if the response is lower than 3, suggest that maybe the user
                # should speak to family, friends or a professional
            else puts "\nthat's good to hear \n\n"
                # if the response is between 4 and 7, put "you're doing ok"
       
            end

# return here if the user chooses to write another entry
while (diary_entry == true)

box2 = TTY::Box.frame(width: 39, height: 12, align: :center, padding: 1, title: {bottom_right: '++++'}) do pastel.blue"thank you for your responses,\n  
    would you like to write about \n 
    your day? it can be a word or \n
    2, or a full on essay,\n        
    no pressure: "
end

print pastel.yellow box2

summary.entry = gets


puts summary.to_s

File.open("previous-entries.txt", "a") do |file|
    file.write(
        "#{summary.to_s}\n#{Quotes_list.sample.quote_str}\n\n---------------------------\n\n"
    )
end

puts pastel.blue "\nWould you like to write another entry? (yes/no)"
    input = gets.chomp
    if input != "yes"
        diary_entry = false
    end

end

