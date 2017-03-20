# mentor

# require gems
require 'sqlite3'
require 'faker'

# create SQLITE3 database
db = SQLite3::Database.new("mentors.db")

create_mentor_table = <<-SQL
  CREATE TABLE IF NOT EXISTS mentors(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255),
  email VARCHAR(255),
  skill_id INT, 
  FOREIGN KEY (skill_id) REFERENCES skills(id)
  )

SQL

# create mentors table
db.execute(create_mentor_table)

create_mentee_table = <<-SQL
  CREATE TABLE IF NOT EXISTS mentee(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255),
  email VARCHAR(255),
  skill_id INT, 
  FOREIGN KEY (skill_id) REFERENCES skills(id)
  )
SQL

# create mentee table
# db.execute(create_mentee_table)

create_skills_table = <<-SQL
  CREATE TABLE IF NOT EXISTS skills(
  id INTEGER PRIMARY KEY,
  skill VARCHAR(255)
  )
SQL

# create skills table
db.execute(create_skills_table)

# insert skills into skills table

tech = ["ruby", "Javascript", "C", "Python"]

tech.each do |tech|
  db.execute("INSERT INTO skills (skill) VALUES (?)", [tech])
end

# method that randomizes a skill from an array
# def skills
  # skills = ["ruby", "Javascript", "C", "Python"]
  # skills.sample
# end

def create_mentor(db, name, location, email, skill_id)
  db.execute("INSERT INTO mentors (name, location, email, skill_id) VALUES (?,?,?,?)", [name,location, email, skill_id])
end

def create_mentee(db, name, location, email, skill_id)
  db.execute("INSERT INTO mentee (name, location, email, skill_id) VALUES (?,?,?,?)",[name,location, email, skill_id])
end  

50.times do 
  create_mentor(db, Faker::Name.name, Faker::Address.state, Faker::Internet.email, rand(1...5))
end

25.times do 
  create_mentee(db, Faker::Name.name, Faker::Address.state, Faker::Internet.email, rand(1...5))
end











