# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @cars = db.execute("SELECT * FROM cars")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/cars/new' do
  erb :new_car
end
# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/cars' do
  db.execute("INSERT INTO cars (car_brand) VALUES (?)", [params[:car_brand]])
  redirect '/'
end
# add static resources
