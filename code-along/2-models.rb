# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all  #clearing all the data, so that we don't end up with a new Apple row, everytime that we run this code
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
# {id: nil, name: nil, city: nil, state: nil, url: nil, created_at: nil, updated_at: nil} --> this is a hash, and a hash is a row of the table at the end of the 

# 2. insert new rows in companies table
#
new_company = Company.new
#p new_company #p is just the way to expand a bit more what is inside; "nil" means there is nothing in it; without the "#", it is going to show in the terminal
new_company ["name"] = "Apple"
new_company ["city"] = "Cupertino"
new_company ["state"] = "CA"
new_company ["url"] = "https://apple.com"
#p new_company
new_company.save #will add the info on the time columns, at what time you changed if for the last time
#p new_company

new_company = Company.new
#p new_company #p is just the way to expand a bit more what is inside; "nil" means there is nothing in it
new_company ["name"] = "Amazon"
new_company ["city"] = "Seattle"
new_company ["state"] = "WA"
new_company ["url"] = "https://amazon.com"
#p new_company
new_company.save #will add the info on the time columns, at what time you changed if for the last time
#p new_company

new_company = Company.new
#p new_company #p is just the way to expand a bit more what is inside; "nil" means there is nothing in it
new_company ["name"] = "Anthropic"
new_company ["city"] = "San Francisco"
new_company ["state"] = "CA"
new_company ["url"] = "https://anthropic.com"
#p new_company
new_company.save #will add the info on the time columns, at what time you changed if for the last time
#p new_company


puts "Companies: #{Company.all.count}" #Will return the number of rows

# 3. query companies table to find all row with California company
cali_companies = Company.where({"state" => "CA"})
#p cali_companies
"California Companies: #(cali_companies.count)"

# 4. query companies table to find single row for Apple
apple = Company.find_by({ "name" => "Apple"})
p apple

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value

# 7. delete a row
