require 'csv'

result = [].uniq
good_to_go = false
users_csvs = Dir['*1.csv']
puts "starting"
users_csvs.each do |user_file|
  def parse_csv_file_for_names(user_file)
  names = []
  csv_contents = CSV.read(user_file)
  csv_contents.shift
  csv_contents.each do |row|
    names << row[0]
  end
  return names
end
CSV.read(user_file, :encoding =>'windows-1251:utf-8').each do |line|
  if line[0].nil? || line[0][0]  == '#'
    next
  end
  if line[0] == "Nutrient"
    good_to_go = true
    next
  end
parse_csv_file_for_names(user_file)
  # gunit = line[1].split(' ')
  # line[2] = gunit[0]
  # line[1] = gunit[1]
  result << [line[0], line[1], line[2]]
    puts result
end

  CSV.open(user_file, "wb") do |csv|
    result.each{ |line| csv << line }
  end
end



#     all_rows =  name+','+ unit+','+ value
#     # csv_str = all_rows.inject([]) { |csv, row|  csv << CSV.generate_line(row) }.join("")
#       output = File.open( "test.csv", "r" )
# csv_str = row.inject() {|csv, row| csv << CSV.generate_line('name+','+ unit+','+ value')}
# puts csv_str
#   output.close

#     end
    # File.write('test.csv', "'#{name}', '#{unit}', '#{value}'")
    # dogs << row[1][/\d+\.?\d*/] unless row[1].nil?
# end