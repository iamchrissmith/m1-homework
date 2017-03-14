require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "bad_connection"

class ChatTest < Minitest::Test
  def test_chat_exists
    chat = Chat.new
    assert chat
  end

  def test_empty_input_says_hello
    chat = Chat.new
    assert_output("HELLO?!\n") {chat.get_response('')}
  end

  def test_lower_case_hard_to_hear
    chat = Chat.new
    assert_output("I AM HAVING A HARD TIME HEARING YOU.\n") {chat.get_response('hello')}
  end

  def test_upper_case_not_pet_store
    chat = Chat.new
    assert_output("NO, THIS IS NOT A PET STORE\n") {chat.get_response('HELLO')}
  end

  def test_first_goodbye_asks_to_help_more
    chat = Chat.new
    assert_output("ANYTHING ELSE I CAN HELP WITH?\n") {chat.get_response('GOODBYE!')}
  end

  def test_second_goodbye_says_thank_you
    chat = Chat.new
    assert_output("ANYTHING ELSE I CAN HELP WITH?\n") {chat.get_response('GOODBYE!')}
    assert_output("THANK YOU FOR CALLING!\n") {chat.get_response('GOODBYE!')}
  end
end
