require 'csv'
puts ARGV[0]
serving = Array.new
CSV.foreach(ARGV[0], encoding: "ISO8859-1") do |row|
  break if row[0] == "Footnotes"
  serving << "'#{row[0]}' = '#{row[2]}#{row[1]}'"
end

serving = "Insert into Tablsdfsdf (" + serving.slice(4, 5000).join(',').encode('UTF-16le', invalid: :replace, replace: '').encode('UTF-8') +" )"

puts serving
reset; ls ./*/**1.csv -l | awk '{print $(NF)}' | xargs -L1 ruby script.rb

