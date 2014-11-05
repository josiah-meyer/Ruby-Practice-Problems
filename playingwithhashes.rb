#!/usr/bin/env ruby

=begin
I want to come back and make this program slicker when I am more proficient.
Items I want to add:
  1) Instead of ending the program, I want it to loop back to the beginning of the code
    after the code ends.
  2) I want it to read spaces and convert the titles into consistent symbols. Is there a
    method for that?
  3) After I figure out the space issues, do I call .capitalization before or after
    update 2?
  4) Can I capitalize symbols or must I handle the spaces and capitalization before
    converting to a symbol?
My gut says #4 is the answer to my question, but I still want to try and play with symbols.
=end

movies = {
    The_Matrix: 9,
    Lion_King: 8,
    A_Christmas_Story: 10,
    Dumb_and_Dumber: 8,
    Alien: 10,
    Frozen: 5,
    The_Incredibles: 7,
    Hook: 7,
    Little_Miss_Sunshine: 9,
}

puts "Please choose an option"
puts "I respond to: Add, Update, Display or Delete."

choice = gets.chomp.downcase
case choice
  when "add"
    puts "Please enter the title of the movie you want to add."
      title = gets.chomp.to_sym
  if movies[title] != nil
      puts "#{title} is already on the list. Try again."
  else
      puts "Please enter your rating for the film."
        rating = gets.chomp
    movies[title] = rating.to_i
    puts "I added your review. What else can I do for you?"
  end
  
  when "update"
    puts "Tell me the movie you would like to update."
    title = gets.chomp.to_sym
    if movies[title] == nil
        puts "This movie is not on the list."
    else puts "Please enter your new rating."
        rating = gets.chomp.to_i
        movies[title] = rating
  end

  when "display"
    movies.each do | k, v |
    puts "#{k}: #{v}"
  end

  when "delete"
     title = gets.chomp.to_sym
    if movies[title] != nil
        movies.delete(title)
        puts "That movie was removed."
    else
        puts "I could not find that movie."
    end
     
  else
     puts "Please use the commands Add, Display, Update or Delete."
end