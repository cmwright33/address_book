require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

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


erb :address_book
end


post '/' do

end



