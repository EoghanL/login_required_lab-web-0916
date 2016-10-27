def countdown(integer)
  puts "#{integer}"
  integer -= 1
  if integer > 0
    countdown(integer)
  else
    puts "Done!"
  end  
end
