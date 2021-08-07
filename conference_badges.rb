# conference_badges 
#badge_maker
#  returns a formatted badge 
#  When provided with a name, will create and return a message 
def badge_maker(name)
    "Hello, my name is #{name}."
end

puts badge_maker("Ariel")
#=> Hello, my name is Ariel.
puts ""

#batch_badge_creator
#  returns a list of badge messages 
#  does not hard-code response 
#  takes an array of names as an argument and returns an array of badge messages 
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"] 

def batch_badge_creator(attendees)
    attendees.map do |attendee|
        "Hello, my name is #{attendee}."
    end
end

puts batch_badge_creator(attendees)
# => Hello, my name is Edsger., Hello, my name is Ada...etc
puts ""

#-----------------------------------------------------------------------
# This approach gave a "hard coded error"
def batch_badge_creator_using_each(attendees)
    attendees.each {|attendees| puts "Hello, my name is #{attendees}."}
end
batch_badge_creator_using_each(attendees)
#=> Hello, my name is Edsger. Hello, my name is Ada...etc
puts ""
#-------------------------------------------------------------------------

#assign_rooms
#  returns a list of welcome messages and room assignments 
#  does not hard-code the response 
#  Takes a list of speakers and ssigns each speacker to a room (1-7)
#  return a list of room assignments in the form of: "Hello, _____! You'll be assigned to room _____!"
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"] 
def assign_rooms(attendees)
  attendees.map.with_index(1) do |attendee, room_num|
    "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
  end
end

puts assign_rooms(attendees)
# => Hello, Edsger! You'll be assigned to room 1!, #=> Hello, Ada! You'll be assigned to room 2!

puts ""
#------------------------------------------------------------------------------
# This approach gave a "hard coded error"
# uses each with index. which starts at 0, new variables roomNumPlusOne increase index by 1 
# so that the index starts at 1
def assign_rooms_using_each(attendees)
    rooms = 0
    attendees.each_with_index do |attendee, room_num|
        roomNumPlusOne = room_num + 1
        puts "Hello, #{attendee}! You'll be assigned to room #{roomNumPlusOne}!"
  end
end

assign_rooms_using_each(attendees)
#=> Hello, Edsger! You'll be assigned to room 1!, # => Hello, Ada! You'll be assigned to room 2!...etc
puts ""
#----------------------------------------------------------------------------
#printer
#   outputs the list of badges and room_assignments 
# will output first the results of the batch_badge_creator method and then of the assign_rooms method on the screen 
# Methods can call other methods, If the return value of assign_rooms is an array of room assignment,
# How can you print out each assignment?

# You'll need to iterate over your array of room assignment in order to puts out each individual assignment 
def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge 
    end 

    assign_rooms(attendees).each do |assignment|
        puts assignment
    end
end

printer(attendees)
#=> Hello, my name is Edsger.
#=> Hello, my name is Ada.
#=> Hello, my name is Charles.
#=> Hello, my name is Alan.
#=> Hello, my name is Grace.
#=> Hello, my name is Linus.
#=> Hello, my name is Matz.
#=> Hello, Edsger! You'll be assigned to room 1!
#=> Hello, Ada! You'll be assigned to room 2!
#=> Hello, Charles! You'll be assigned to room 3!
#=> Hello, Alan! You'll be assigned to room 4!
#=> Hello, Grace! You'll be assigned to room 5!
#=> Hello, Linus! You'll be assigned to room 6!
#=> Hello, Matz! You'll be assigned to room 7!