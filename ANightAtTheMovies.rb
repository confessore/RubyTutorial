movies = {
    ayylmao: 3
}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp
puts choice
case choice
    when "add"
        puts "ayy lemme get dat movie"
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts " ayy lemme get dat rating"
            rating = gets.chomp.to_i
            movies[title] = rating
            puts "added dat an #{title} got dat #{movies[title]}"
        else
            puts "try gain maayne"
            title = gets.chomp.to_sym
        end
    when "update"
        puts "ayy lemme get dat movie"
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts "ain't fin dat maayne, try gain"
            title = gets.chomp.to_sym
        else
            puts "ayy lemme get dat rating"
            rating = gets.chomp.to_i
            movies[title] = rating
        end
    when "display"
        movies.each { |movie, rating| puts "#{movie}: #{rating}" }
    when "delete"
        puts "ayy lemme get dat movie"
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts "ain't fin dat maayne, try gain"
            title = gets.chomp.to_sym
        else
            movies.delete(title)
            puts "aight fam"
        end
    else
        puts "ayy dat ain't wut I say choose maayne, try gain"
end