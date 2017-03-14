class Chat
  def initialize
    @ready_to_quit = false
    @first_goodbye = false
  end

  def get_user_input
    gets.chomp
  end

  def get_response(message='')
    if message.empty?
      puts "HELLO?!"
    elsif message.downcase == message
      puts "I AM HAVING A HARD TIME HEARING YOU."
    elsif message == "GOODBYE!" && !@first_goodbye
      puts "ANYTHING ELSE I CAN HELP WITH?"
      @first_goodbye = true
    elsif message == "GOODBYE!" && @first_goodbye
      puts "THANK YOU FOR CALLING!"
      @ready_to_quit = true
    elsif message.upcase == message
      puts "NO, THIS IS NOT A PET STORE"
    end
  end

  def start
    puts "HELLO, THIS IS A GROCERY STORE!"
    until @ready_to_quit
      input = get_user_input
      get_response(input)
    end
  end
end

chat = Chat.new
chat.start
