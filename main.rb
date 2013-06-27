require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

get '/' do
db = PG.connect(:dbname => 'address_book',:host => 'localhost')
@first = params[:name]
@last = params[:last]
@gender = params[:gender]
@dtgd = params[:dtgd]
@phone = params[:phone]

sql ="insert into contacts (first, last, gender, dtgd, phone) values ('#{@first}', '#{@second}', '#{@gender}', #{@dtgd}, #{@phone})"
db.exec(sql)

db.close


erb :form
end


post '/' do

end



