#imprimir un valor en pantalla
#puts "Hello to my world Ruby!"

#let's see the 50's albums
require "csv"

albums = CSV.read("./albums.csv")[1..] #the [1..] is to skip the first row
#puts albums[1]
# puts albums[2..5]

# find the albums from the 50's and that are Jazz
def classic_jazz(album)
  album[2] == "Jazz" and album[3].to_i.between?(1950, 1959)
end

def print_album(album)
  puts "Album: #{album[0]} - #{album[1]} (#{album[3]})"
end

# puts classic_jazz(albums[1])
# puts classic_jazz(albums[-1])

# this is a block that takes the albums and select the ones that are Jazz and from the 50's
cincuentas = albums.select{|album| album[2] == "Jazz" and album[3].to_i.between?(1950, 1959)}
puts cincuentas