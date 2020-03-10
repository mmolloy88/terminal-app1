require "pastel"
require "tty-prompt"
require "tty-box"

prompt = TTY::Prompt.new(enable_color: true)

def diary_entry

end

print TTY::Box.frame("
Welcome to the terminal diary!

note: this is for subjective use, you can choose to
share your thoughts if you'd like!!")


prompt.keypress("Press space to continue", keys: [:space])



