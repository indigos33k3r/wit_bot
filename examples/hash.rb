require_relative 'helpers/helpers'

old = WitBot::Bot::Conversation::Base.new # Create a conversation

old.send_message 'This is a cool test.' # Sent a message

hash = old.as_json # Convert conversation to a hash suitable for json use.

new = WitBot::Bot::Conversation::Base.from_hash hash # Recreate the conversation from the hash

puts 'Hash:'

ap hash # Print the hash

puts "\nSize: #{hash.to_json.length.to_s :human_size}"

puts "\nOld vs New:\n\n"

p old # Print old and new on top of each other for comparison.
p new