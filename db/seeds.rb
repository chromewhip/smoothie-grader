# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'



# Food.create([{name: 'Banana', water: 46.82, energy: 56, protein: 0.68, totallipidfat: 0.21, carbohydrate: 14.28, fiber: 1.6, sugars: 7.64, minerals: 0, calcium: 3, iron: 0.16, magnesium: 17, phosphorus: 14, potassium: 224, sodium: 1, zinc: 0.09, vitaminc: 5.4, thiamin: 0.019, riboflavin: 0.046, niacin: 0.416, vitaminb6: 0.229, folate: 12, vitaminb12: 0, vitamina_iu: 40, vitamine: 0.06, vitamind: 0, vitamink: 0.3, lipids: 0, saturatedfats: 0.07, monounsaturated: 0.02, polyunsaturated: 0.046, trans: 0, cholesterol: 0, aminoacids: 0},
#  {name: 'Kale', water: 52.53, energy: 31, protein: 2.68, totallipidfat: 0.58, carbohydrate: 5.47, fiber: 2.2, sugars: 1.41, minerals: 0, calcium: 94, iron: 0.92, magnesium: 29, phosphorus: 58, potassium: 307, sodium: 24, zinc: 0.35, vitaminc: 75, thiamin: 0.069, riboflavin: 0.081, niacin: 0.625, vitaminb6: 0.169, folate: 88, vitaminb12: 0, vitamina_iu: 6244, vitamine: 0.96, vitamind: 0, vitamink: 440.5, lipids: 0, saturatedfats: 0.057, monounsaturated: 0.032, polyunsaturated: 0.0211, trans: 0, cholesterol: 0, aminoacids: 0},
#   {name: 'Milk', water: 124.98, energy: 0, protein: 0, totallipidfat: 0, carbohydrate: 0, fiber: 0, sugars: 0, minerals: 0, calcium: 12, iron: 0, magnesium: 2, phosphorus: 0, potassium: 0, sodium: 2, zinc: 0, vitaminc: 0, thiamin: 0, riboflavin: 0, niacin: 0, vitaminb6: 0, folate: 0, vitaminb12: 0, vitamina_iu: 0, vitamine: 0, vitamind: 0, vitamink: 0, lipids: 0, saturatedfats: 0, monounsaturated: 0, polyunsaturated: 0, trans: 0, cholesterol: 0, aminoacids: 0},
#    {name: 'Chia', water: 1.45, energy: 122, protein: 4.14, totallipidfat: 7.68, carbohydrate: 10.53, fiber: 8.6, sugars: 0, minerals: 0, calcium: 158, iron: 1.93, magnesium: 84, phosphorus: 215, potassium: 102, sodium: 4, zinc: 1.14, vitaminc: 0.4, thiamin: 0.119, riboflavin: 0.046, niacin: 2.208, vitaminb6: 0, folate: 0, vitaminb12: 0, vitamina_iu: 14, vitamine: 0.12, vitamind: 0, vitamink: 0, lipids: 0, saturatedfats: 0.832, monounsaturated: 0.577, polyunsaturated: 5.916, trans: 0.035, cholesterol: 0, aminoacids: 0},

#     {name: 'Mint', water: 85.55, energy: 44, protein: 3.29, totallipidfat: 0.73, carbohydrate: 8.41, fiber: 6.8, sugars: 0, minerals: 0, calcium: 1.9, iron: 0.16, magnesium: 17, phosphorus: 14, potassium: 224, sodium: 1, zinc: 300.09, vitaminc: 5.4, thiamin: 0.019, riboflavin: 0.046, niacin: 0.416, vitaminb6: 0.229, folate: 12, vitaminb12: 0, vitamina_iu: 40, vitamine: 0.06, vitamind: 0, vitamink: 0.3, lipids: 0, saturatedfats: 0.07, monounsaturated: 0.02, polyunsaturated: 0.046, trans: 0, cholesterol: 0, aminoacids: 0},

#      {name: 'default', water: 0, energy: 0, protein: 0, totallipidfat: 0, carbohydrate: 0, fiber: 0, sugars: 0, minerals: 0, calcium: 0, iron: 0, magnesium: 0, phosphorus: 0, potassium: 0, sodium: 0, zinc: 0, vitaminc: 0, thiamin: 0, riboflavin: 0, niacin: 0, vitaminb6: 0, folate: 0, vitaminb12: 0, vitamina_iu: 0, vitamine: 0, vitamind: 0, vitamink: 0, lipids: 0, saturatedfats: 0, monounsaturated: 0, polyunsaturated: 0, trans: 0, cholesterol: 0, aminoacids: 0},

#       {name: 'VitCblaster', water: 0, energy: 0, protein: 0, totallipidfat: 0, carbohydrate: 0, fiber: 0, sugars: 0, minerals: 0, calcium: 0, iron: 0, magnesium: 0, phosphorus: 0, potassium: 0, sodium: 0, zinc: 0, vitaminc: 80, thiamin: 0, riboflavin: 0, niacin: 0, vitaminb6: 0, folate: 0, vitaminb12: 0, vitamina_iu: 0, vitamine: 0, vitamind: 0, vitamink: 0, lipids: 0, saturatedfats: 0, monounsaturated: 0, polyunsaturated: 0, trans: 0, cholesterol: 0, aminoacids: 0}])

require 'pg'
require 'csv'
arr=[]
users_csvs = Dir['./db/foodCSV/vegetables/must*1.csv']
# users_csvs2 = Dir['./db/foodCSV/berries/*1.csv']
# users_csvs3 = Dir['./db/foodCSV/alternate_csv/*1.csv']
puts "starting"
times=0
# loop do
# if times < 11
#   users_csvs = users_csvs3
# end
# if times <= 18 && times > 10 && times
#   users_csvs = users_csvs2
# end

# if times >= 50
#   break
# end

users_csvs.each do |user_file|

cleaner_filename = user_file.gsub('1.csv', '').gsub(/.*\//, '')

puts cleaner_filename
# conn.prepare('statement1', 'insert into table1 (id, name, profile) values ($1, $2, $3)')
record={} #This will be created to record the column name and its corresponding value
columns_values = [] #This array will store hashes of column names and values
#The loop below will create an Array of Hashes and each Hash will store the column name and its
#corresponding value.

CSV.foreach(user_file, :encoding =>'windows-1251:utf-8') do |row|
  # puts user_file.length
  if user_file.length >= 50
    break
  end
  if row[0] == "Footnotes"
    break
  end
  if row[0] == "Nutrient"
    good_to_go = true
    next
  end
  if row[2].blank?
    row[2] = 0
  end
  # puts row[0].length

    record = { 'column_name'=>row[0],'column_value'=>row[2]}

    valid_keys = [:Water,:Energy,:Protein,:totallipidfat,:carbohydrate,:fiber,:sugars,:Minerals,:calcium,:iron,:magnesium,:phosphorus,:potassium,:sodium,:zinc,:Thiamin,:Riboflavin,:Niacin,:vitaminb6,:vitaminb12,:vitamina_iu,:vitamind,:vitamink,:Lipids,:saturatedFats,:monounsaturated,:polyunsaturated,:Cholesterol,:aminoacids]
    columns_values << record
end


# [0,0,0,0,0,1.24,31,2.19,0.66,5.72,3.3,0,164,9.62,66,30,212,38,0.27,0,0.0,0.032,0.156,0.722,0.284,58,0.00,58,1164,0.0,0,0,0.173,0.023,0.358,0.000,0,0,0]

# CREATE TEMP TABLE tmp_table AS SELECT * FROM newsletter_subscribers;
# COPY tmp_table (na) FROM stdin DELIMITER ' ' CSV;
# SELECT count(*) FROM tmp_table;  -- Just to be sure
# TRUNCATE newsletter_subscribers;
sql = "INSERT into foods ("
good_to_go = false
# Get all the column names in the SQL statement
columns_values.each_with_index do |row, index|
if row['column_name'] == 'name'
  sql=sql+'name,'.parse_csv
end
  # if columns_values.length >=42
  #   row
  # end
  # puts columns_values.length
    if row["column_name"] == "Nutrient"
      good_to_go = true
      next
    end
    #     if row["column_name"].match(cleaner_filename)
    #   sql=sql+'name,'
    #   next
    # end
   if row["column_name"] == 'Vitamin A, RAE' || row["column_name"] == 'Vitamin E (alpha-tocopherol)' || row["column_name"] == 'Vitamin D (D2 + D3)' || row["column_name"].match(/^\W/) || row["column_name"] == 'Other' || row["column_name"] == "Caffeine" || row["column_name"] == "Footnotes" || row["column_name"] == "Vitamins" || row["column_name"] == "Proximates" || row["column_name"] == "Source: USDA National Nutrient Database for Standard Reference 28 Software v.2.3.7.5" || row["column_name"].match(/:/) || row["column_name"].match(/Report/) || row["column_name"]== "Hexadecenoic acid" || row["column_name"]== "Eicosapentaenoic n-3 acid" || row["column_name"]== "Vitamin A" || row["column_name"]== "Octadecadienoic acid" || row["column_name"]== "Glutamic acid" || row["column_name"]== "Aspartic acid" || row["column_name"]== "Docosahexaenoic n-3 acid" || row["column_name"]== "Serine" || row["column_name"]== "Arginine" || row["column_name"]== "Eicosatetraenoic acid" || row["column_name"]== "Lutein + zeaxanthin" || row["column_name"]== "Eicosenoic acid" || row["column_name"]== "Octadecatetraenoic acid" || row["column_name"].match(/.acid$/) || row["column_name"]== "Valine"|| row["column_name"]== "Alanine"|| row["column_name"]== "Proline" || row["column_name"]== "Saturated fatty acids"|| row["column_name"]== "Glycine"|| row["column_name"]== "Theobromine"|| row["column_name"]== "Retinol"|| row["column_name"]== "Copper, Cu"|| row["column_name"]== "Selenium, Se"|| row["column_name"]== "Calories"|| row["column_name"]== "Choline"|| row["column_name"]== " Mg"|| row["column_name"]== "Manganese, Mn" || row["column_name"]== "Histidine" || row["column_name"]== "Cryptoxanthin, beta"|| row["column_name"]== "Lycopene"|| row["column_name"]== "Methionine"|| row["column_name"]== "Leucine"|| row["column_name"]== "Phenylalanine"|| row["column_name"]== "Tyrosine"|| row["column_name"]== "Cystine"|| row["column_name"]== "Lysine"|| row["column_name"]== "Threonine"|| row["column_name"]== "Isoleucine"|| row["column_name"]== "Tryptophan"|| row["column_name"]== "Alcohol, ethyl"|| row["column_name"]== "Carotene, alpha"|| row["column_name"]== "Carotene, beta"|| row["column_name"]== "Ash"|| row["column_name"]== "Ash"|| row["column_name"]== "Folate, DFE"|| row["column_name"]== "Folate, food"|| row["column_name"]== "Tocopherol, alpha"|| row["column_name"]== "Betaine" || row["column_name"]== "Fructose" || row["column_name"]== "Maltose" || row["column_name"]== "Lactose" || row["column_name"]== "Dihydrophylloquinone" || row["column_name"]== "Tocotrienol" || row["column_name"]== "Glucose (dextrose)" || row["column_name"]== "Sucrose" || row["column_name"]== "Tocotrienol" || row["column_name"]== "Maltose" || row["column_name"]== "Maltose" || row["column_name"].match(/alpha$/)|| row["column_name"].match(/^Beta/) || row["column_name"].match(/^Tocotrienol/)|| row["column_name"].match(/^Tocopherol/) || row["column_name"].match(/^Hydroxyproline/) || row["column_name"].match(/^Galactose/)  || row["column_name"].match(/^Campesterol/)
  #  elsif sql == sql + sql


    # row["column_name"]== "Folate" && row["column_name"]== "Folate" ||  row["column_name"]== "Water" && row["column_name"]== "Water" || row["column_name"]== "Energy" && row["column_name"]== "Energy" || row["column_name"]== "Protein" && row["column_name"]== "Protein" || row["column_name"]== "Total lipid (fat)" && row["column_name"]== "Total lipid (fat)" || row["column_name"]== "Carbohydrate, by difference" && row["column_name"]== "Carbohydrate, by difference" || row["column_name"]== "Fiber, total dietary" && row["column_name"]== "Fiber, total dietary" || row["column_name"]== "Sugars, total" && row["column_name"]== "Sugars, total" || row["column_name"]== "Minerals" && row["column_name"]== "Minerals" || row["column_name"]== "Calcium, Ca" && row["column_name"]== "Calcium, Ca" || row["column_name"]== "Iron, Fe" && row["column_name"]== "Iron, Fe"  || row["column_name"]== "Phosphorus, P'" && row["column_name"]== "Phosphorus, P'"|| row["column_name"].match(/Magnesium/) && row["column_name"].match(/Magnesium/)|| row["column_name"]== "Phosphorus, P" && row["column_name"]== "Phosphorus, P"|| row["column_name"]== "Potassium, K" && row["column_name"]== "Potassium, K"|| row["column_name"]== "Sodium, Na" && row["column_name"]== "Sodium, Na"|| row["column_name"]== "Zinc, Zn" && row["column_name"]== "Zinc, Zn" || row["column_name"]== "Thiamin" && row["column_name"]== "Thiamin"|| row["column_name"]== "Riboflavin" && row["column_name"]== "Riboflavin"|| row["column_name"]== "Niacin" && row["column_name"]== "Niacin" || row["column_name"]== "Vitamin B-6" && row["column_name"]=='Vitamin B-6' || row["column_name"]== "Vitamin B-12" && row["column_name"]=='Vitamin B-12' || row["column_name"]== "Vitamin A, IU" && row["column_name"]=='Vitamin A, IU' || row["column_name"]== "Vitamin D" && row["column_name"]=='Vitamin D' || row["column_name"]== "Vitamin K (phylloquinone)" && row["column_name"]=='Vitamin K (phylloquinone)'|| row["column_name"]== "Lipids" && row["column_name"]=='Vitamin D'|| row["column_name"]== "Vitamin D" && row["column_name"]=='Vitamin D'
    next

# elsif row["column_name"] && row["column_name"] == 'Water'
#   next
    #     elsif row["column_name"] == 'Water' && row["column_name"] == 'Water'
    # sql=sql+'water,'
      elsif row["column_name"] == 'name'
      sql=sql+'name,'

    elsif row["column_name"] == 'Vitamin C, total ascorbic acid' || row["column_name"] == 'Vitamin C'
    sql=sql+'vitaminc,'

    elsif row["column_name"] == 'Total lipid (fat)' || row["column_name"] == 'Fat'|| row["column_name"]== "totallipidfat" && row["column_name"]== "totallipidfat"
      sql=sql+'totallipidfat,'

    elsif row["column_name"]=='Carbohydrate, by difference' || row["column_name"]=='Carbohydrate'
      sql=sql+'carbohydrate,'

    elsif row["column_name"]=='Fiber, total dietary' || row["column_name"]=='Fiber'
      sql=sql+'fiber,'

    elsif row["column_name"]=='Sugars, total' || row["column_name"]=='Sugars'
      sql=sql+'sugars,'

    elsif row["column_name"]=='Calcium, Ca' || row["column_name"]=='Calcium, Ca' && row["column_name"]=='Calcium, Ca'
      sql=sql+'calcium,'

    elsif row["column_name"]=='Iron, Fe'
      sql=sql+'iron,'

    elsif row["column_name"].match(/Magnesium/)
      sql=sql+'magnesium,'

    elsif row["column_name"]=='Phosphorus, P'
      sql=sql+'phosphorus,'

    elsif row["column_name"]=='Potassium, K'
      sql=sql+'potassium,'

    elsif row["column_name"]=='Sodium, Na'
      sql=sql+'sodium,'

    elsif row["column_name"]=='Zinc, Zn'
      sql=sql+'zinc,'

    elsif row["column_name"]=='Vitamin B-6' || row["column_name"]== 'Vitamin B6'
      sql=sql+'vitaminb6,'

    elsif row["column_name"]=='Folate, DFE' && row["column_name"]=='Folate'
      sql=sql+'folate,'

    elsif row["column_name"]=='Vitamin D'
      sql=sql+'vitamind,'

    elsif row["column_name"]=='Vitamin K (phylloquinone)' || row["column_name"]=='Vitamin K'
      sql=sql+'vitamink,'

    elsif row["column_name"]=='Vitamin B-12' || row["column_name"]=='Vitamin B12'
      sql=sql+'vitaminb12,'

    elsif row["column_name"]=='Vitamin A, IU'
      sql=sql+'vitamina_iu,'

    elsif row["column_name"]=='Vitamin E (alpha-tocopherol)' || row["column_name"]=='Vitamin E'
      sql=sql+'vitamine,'

    elsif row["column_name"]=='Fatty acids, total saturated' || row["column_name"]=='Saturated fatty acids'
      sql=sql+'saturatedFats,'

    elsif row["column_name"]=='Fatty acids, total monounsaturated' || row["column_name"]=='Monounsaturated fatty acids'
      sql=sql+'monounsaturated,'

    elsif row["column_name"]=='Fatty acids, total polyunsaturated' || row["column_name"]=='Polyunsaturated fatty acids'
      sql=sql+'polyunsaturated,'

    elsif row["column_name"]=='Fatty acids, total trans'
      sql=sql+'trans,'

    elsif row["column_name"]=='Amino Acids'
      sql=sql+'aminoacids,'
    # elsif user_file == user_file
    #  clean = cleaner_filename
    #   sql =sql + clean+","
    else
     sql = sql + row["column_name"]+","
    end
end
sql.slice!(sql.length-1, sql.length)
sql=sql+") values ("

# Get all the column values in the SQL statement.
good_to_go=false
columns_values.each_with_index do |row, index|
  if row["column_name"] == "Nutrient"
    good_to_go = true
    next
  end
  if index == ''
    index = '0'
    next
  end

   if row["column_name"] == 'Vitamin A, RAE' || row["column_name"] == 'Vitamin E (alpha-tocopherol)' || row["column_name"] == 'Vitamin D (D2 + D3)' || row["column_name"].match(/^\W/) || row["column_name"] == 'Other' || row["column_name"] == "Caffeine" || row["column_name"] == "Footnotes" || row["column_name"] == "Vitamins" || row["column_name"] == "Proximates" || row["column_name"] == "Source: USDA National Nutrient Database for Standard Reference 28 Software v.2.3.7.5" || row["column_name"].match(/:/) || row["column_name"].match(/Report/) || row["column_name"]== "Hexadecenoic acid" || row["column_name"]== "Eicosapentaenoic n-3 acid" || row["column_name"]== "Vitamin A" || row["column_name"]== "Octadecadienoic acid" || row["column_name"]== "Glutamic acid" || row["column_name"]== "Aspartic acid" || row["column_name"]== "Docosahexaenoic n-3 acid" || row["column_name"]== "Serine" || row["column_name"]== "Arginine" || row["column_name"]== "Eicosatetraenoic acid" || row["column_name"]== "Lutein + zeaxanthin" || row["column_name"]== "Eicosenoic acid" || row["column_name"]== "Octadecatetraenoic acid" || row["column_name"].match(/.acid$/) || row["column_name"]== "Valine"|| row["column_name"]== "Alanine"|| row["column_name"]== "Proline" || row["column_name"]== "Saturated fatty acids"|| row["column_name"]== "Glycine"|| row["column_name"]== "Theobromine"|| row["column_name"]== "Retinol"|| row["column_name"]== "Copper, Cu"|| row["column_name"]== "Selenium, Se"|| row["column_name"]== "Calories"|| row["column_name"]== "Choline"|| row["column_name"]== " Mg"|| row["column_name"]== "Manganese, Mn" || row["column_name"]== "Histidine" || row["column_name"]== "Cryptoxanthin, beta"|| row["column_name"]== "Lycopene"|| row["column_name"]== "Methionine"|| row["column_name"]== "Leucine"|| row["column_name"]== "Phenylalanine"|| row["column_name"]== "Tyrosine"|| row["column_name"]== "Cystine"|| row["column_name"]== "Lysine"|| row["column_name"]== "Threonine"|| row["column_name"]== "Isoleucine"|| row["column_name"]== "Tryptophan"|| row["column_name"]== "Alcohol, ethyl"|| row["column_name"]== "Carotene, alpha"|| row["column_name"]== "Carotene, beta"|| row["column_name"]== "Ash"|| row["column_name"]== "Ash"|| row["column_name"]== "Folate, DFE"|| row["column_name"]== "Folate, food"|| row["column_name"]== "Tocopherol, alpha"|| row["column_name"]== "Betaine" || row["column_name"]== "Fructose" || row["column_name"]== "Maltose" || row["column_name"]== "Lactose" || row["column_name"]== "Dihydrophylloquinone" || row["column_name"]== "Tocotrienol" || row["column_name"]== "Glucose (dextrose)" || row["column_name"]== "Sucrose" || row["column_name"]== "Tocotrienol" || row["column_name"]== "Maltose" || row["column_name"]== "Maltose" || row["column_name"].match(/alpha$/)|| row["column_name"].match(/^Beta/) || row["column_name"].match(/^Tocotrienol/)|| row["column_name"].match(/^Tocopherol/) || row["column_name"].match(/^Hydroxyproline/) || row["column_name"].match(/^Galactose/)  || row["column_name"].match(/^Campesterol/)
      # elsif row["column_value"] == cleaner_filename
      # sql=sql+'name,'

    # row["column_name"]== "Folate" && row["column_name"]== "Folate" ||  row["column_name"]== "Water" && row["column_name"]== "Water" || row["column_name"]== "Energy" && row["column_name"]== "Energy" || row["column_name"]== "Protein" && row["column_name"]== "Protein" || row["column_name"]== "Total lipid (fat)" && row["column_name"]== "Total lipid (fat)" || row["column_name"]== "Carbohydrate, by difference" && row["column_name"]== "Carbohydrate, by difference" || row["column_name"]== "Fiber, total dietary" && row["column_name"]== "Fiber, total dietary" || row["column_name"]== "Sugars, total" && row["column_name"]== "Sugars, total" || row["column_name"]== "Minerals" && row["column_name"]== "Minerals" || row["column_name"]== "Calcium, Ca" && row["column_name"]== "Calcium, Ca" || row["column_name"]== "Iron, Fe" && row["column_name"]== "Iron, Fe"  || row["column_name"]== "Phosphorus, P'" && row["column_name"]== "Phosphorus, P'"|| row["column_name"].match(/Magnesium/) && row["column_name"].match(/Magnesium/)|| row["column_name"]== "Phosphorus, P" && row["column_name"]== "Phosphorus, P"|| row["column_name"]== "Potassium, K" && row["column_name"]== "Potassium, K"|| row["column_name"]== "Sodium, Na" && row["column_name"]== "Sodium, Na"|| row["column_name"]== "Zinc, Zn" && row["column_name"]== "Zinc, Zn" || row["column_name"]== "Thiamin" && row["column_name"]== "Thiamin"|| row["column_name"]== "Riboflavin" && row["column_name"]== "Riboflavin"|| row["column_name"]== "Niacin" && row["column_name"]== "Niacin" || row["column_name"]== "Vitamin B-6" && row["column_name"]=='Vitamin B-6' || row["column_name"]== "Vitamin B-12" && row["column_name"]=='Vitamin B-12' || row["column_name"]== "Vitamin A, IU" && row["column_name"]=='Vitamin A, IU' || row["column_name"]== "Vitamin D" && row["column_name"]=='Vitamin D' || row["column_name"]== "Vitamin K (phylloquinone)" && row["column_name"]=='Vitamin K (phylloquinone)'|| row["column_name"]== "Lipids" && row["column_name"]=='Vitamin D'|| row["column_name"]== "Vitamin D" && row["column_name"]=='Vitamin D'
  else
    sql = sql + row["column_value"].to_s+","
      end
end

 puts "im outside the loop"
sql.slice!(sql.length-1, sql.length)
sql=sql+")"

    # UPDATE a=a, b=b, c=c, d=d, e=e, f=f, g=g;
sql.gsub! /"/, "'"
# sql.gsub!(',)', ')')
puts sql
# puts times
conn = PG::Connection.open(:dbname => 'finalproj')
res = conn.query(sql)
times+=1
end
# end



