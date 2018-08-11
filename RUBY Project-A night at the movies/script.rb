movies = {
  Expanse: 10
}
puts "Enter Input"
choice = gets.chomp.downcase

case choice
  when "add"
  puts "Input movie title"
  title=gets.chomp.downcase.to_sym
    if movies[title].nil?  
  puts "Input rating"
  rating = gets.chomp.to_i
  movies[title]=rating
      puts "The movie #{title} is added with a rating #{movies[title]}"
    else
      puts "That movie #{title} already exists and its rating is #{movies[title]}"
    end
  puts movies
  when "update"
  puts "Input movie title"
  title = gets.chomp.downcase.to_sym
  if movies[title].nil?
    puts "Error the movie doesnt exists"
  else
    puts "Input rating"
    rating=gets.chomp
    movies[title]=rating
    puts "The movie #{title} has been updated with a rating #{movies[title]}"
  end
  when "display"
  puts movies.each {|movie,rating| puts "#{movie}: #{rating}"}
  when "delete"
  puts "Input the movie you want to delete"
  title=gets.chomp.to_sym
  if movies[title].nil?
    puts "Error the movie doesnt exists"
  else
    movies.delete(title)
    puts "The movie #{title} has been deleted"
  end
end
