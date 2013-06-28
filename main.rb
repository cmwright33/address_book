require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'


# This get route will connect to the local host database connects to
# a table of my choosing to insert address book information
get '/' do
db = PG.connect(:dbname => 'address_book',:host => 'localhost')
@first = params[:name]
@last = params[:last]
@gender = params[:gender]
@age = params[:age].to_i
@phone = params[:phone].to_i

sql ="insert into contacts (first, last, gender, age, phone) values ('#{@first}', '#{@second}', '#{@gender}', #{@age}, #{@phone})"
db.exec(sql)

db.close


erb :address_book # the erb file that we are routing through has a simple
end               # form which takes the input and stores the data


post '/' do

end



