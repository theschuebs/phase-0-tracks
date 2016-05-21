# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# # write a GET route that retrieves
# # a particular student
get '/students/id/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
    ind_response = ""
      ind_response << "ID: #{student['id'.to_i]}<br>"
      ind_response << "Name: #{student['name']}<br>"
      ind_response << "Age: #{student['age']}<br>"
      ind_response << "Campus: #{student['campus']}<br><br>"
    ind_response
end

get '/students/age/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
    ind_response = ""
      ind_response << "ID: #{student['id'.to_i]}<br>"
      ind_response << "Name: #{student['name']}<br>"
      ind_response << "Age: #{student['age']}<br>"
      ind_response << "Campus: #{student['campus']}<br><br>"
    ind_response
end


get '/contact' do
  "1234 Sandy Lane, Libertyville, IL 60048"
end

#query parameter k/v pair
get '/great_job' do
  name = params[:name]
  # p params #=> will show me the k/v pair in the terminal
    if name
      "GREAT JOB #{name.upcase}!"
    else
      "GREAT JOB!"
    end
end

# A route that uses route parameters to add two numbers 
# and respond with the result. The data types are tricky here
#  -- when will the data need to be (or arrive as) a string?
get '/:number_1/+/:number_2' do
   answer = params[:number_1].to_i + params[:number_2].to_i
   "#{params[:number_1]} + #{params[:number_2]} = #{answer}"
end

# Optional bonus: Make a route that allows the user to search the database 
# in some way -- maybe for students who have a certain first name, 
# or some other attribute. If you like, you can simply modify the home page to take a query parameter, 
# and filter the students displayed if a query parameter is present.



