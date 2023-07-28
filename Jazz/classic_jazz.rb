Genre = 2
Year = 3

require "csv"
CSV.read("./albums.csv")[1..]
  .select{|album| album[Genre] == "Jazz" and album[Year].to_i.between?(1950, 1959)
  }
  .sort_by{|album| album[Year].to_i}
  .each{|album| puts album.join(",")}