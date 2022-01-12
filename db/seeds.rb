# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'net/http'
require 'open-uri'
require 'json'

Poster.destroy_all
Freelancer.destroy_all
Job.destroy_all
Contract.destroy_all
Review.destroy_all


# 10.times do
#     Poster.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, address: Faker::Address.full_address, age: Faker::Number.between(from: 18, to: 60), username: "manbytes", password: "123123123")
# end

poster1 = Poster.create(first_name: "Richard", last_name: "Simpson", age: 34, email: "Richard@Richard.com", address: "123 Spring Street, Elkins, WV 26241", username: "Richard", password: "RichardRichard" )
poster2 = Poster.create(first_name: "Steven", last_name: "Miller", age: 52, email: "Steven@Steven.com", address: "321 Maple Avenue, Centreville, VA 20120", username: "Steven", password: "StevenSteven" )
poster3 = Poster.create(first_name: "Colleen", last_name: "Zimmerman", age: 28, email: "Colleen@Colleen.com", address: "456 Rumple Lane, Denver, CO 53647", username: "Colleen", password: "ColleenColleen" )
poster4 = Poster.create(first_name: "Scott", last_name: "Tiger", age: 25, email: "Scott@Scott.com", address: "654 Tiger Street, Sacremento, CA 46741", username: "Scott", password: "ScottScott" )

# 10.times do 
#     Freelancer.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(from: 18, to: 65), email: Faker::Internet.email, certifications: Faker::Job.key_skill, bio: "blah blah blah about me blah", username: "manbytes", password: "123123123")
# end 

freelancer1 = Freelancer.create(first_name:"Terry", last_name:"Tompkins", age: 35, email:"Terry@Terry.com", certifications:"Cool Dude Certification", bio:"I can do anything you need, master of all trades", username:"Terry", password:"TerryTerry")
freelancer2 = Freelancer.create(first_name:"Jerry", last_name:"Pingley", age: 45, email:"Jerry@Jerry.com", certifications:"FlatIron School Software Engineering Certificate", bio:"I can develope whatever you need", username:"Jerry", password:"JerryJerry")
freelancer3 = Freelancer.create(first_name:"Jennifer", last_name:"Grant", age: 23, email:"Jennifer@Jennifer.com", certifications:"FlatIron School Software Engineering Certificate, RHCSA", bio:"Just give me the job and I'll get it done for you", username:"Jennifer", password:"JenniferJennifer")
freelancer4 = Freelancer.create(first_name:"Karen", last_name:"Frickle", age: 29, email:"Karen@Karen.com", certifications:"Web Development, CCNA", bio:"I like turles and hacking", username:"Karen", password:"KarenKaren")

job1 = Job.create(poster_id: poster1.id, job_title: "I need someone to build a website for my band", job_type: "Website Developer", description: "I need a functional website for my band", remote_job: true, compensation: 500)
job2 = Job.create(poster_id: poster2.id, job_title: "App Developer Wanted", job_type: "Software Developer", description: "I have an idea for an app that I want developed for the Google Play Store", remote_job: true, compensation: 250)
job3 = Job.create(poster_id: poster3.id, job_title: "Web Builder Wanted", job_type: "Website Engineer", description: "I need a functional website for my cake business", remote_job: true, compensation: 400)
job4 = Job.create(poster_id: poster4.id, job_title: "Need Help with Database", job_type: "SQL Developer", description: "I am developing an app and I'm not good with back-end database stuff", remote_job: true, compensation: 750)
# job2 = Job.create(poster_id: Poster.second.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 200)
# job3 = Job.create(poster_id: Poster.third, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 300)
# job4 = Job.create(poster_id: Poster.fourth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 400)
# job5 = Job.create(poster_id: Poster.fifth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 500)
# job6 = Job.create(poster_id: Poster.sixth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 100)
# job7 = Job.create(poster_id: Poster.seventh.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 200)
# job8 = Job.create(poster_id: Poster.eigth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 300)
# job9 = Job.create(poster_id: Poster.ninth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 400)


con1 = Contract.create(job_id: job1.id, freelancer_id: freelancer1.id, bid_price: 10)
con1 = Contract.create(job_id: job2.id, freelancer_id: freelancer2.id, bid_price: 500)
con1 = Contract.create(job_id: job3.id, freelancer_id: freelancer3.id, bid_price: 750)
con1 = Contract.create(job_id: job4.id, freelancer_id: freelancer4.id, bid_price: 1000)

# con2 = Contract.create(job_id: job2.id, freelancer_id: Freelancer.second.id, bid_price: 40)
# con3 = Contract.create(job_id: job3.id, freelancer_id: Freelancer.third.id, bid_price: 150)
# con4 = Contract.create(job_id: job4.id, freelancer_id: Freelancer.fourth.id, bid_price: 200)
# con5 = Contract.create(job_id: job5.id, freelancer_id: Freelancer.fifth.id, bid_price: 110)



Review.create(poster_id: poster1.id, freelancer_id: freelancer2.id, review: "Did Great Work!", rating: 5)
Review.create(poster_id: poster3.id, freelancer_id: freelancer1.id, review: "Couldn't Make up mind.", rating: 2.5)
Review.create(poster_id: poster4.id, freelancer_id: freelancer3.id, review: "Was so so.", rating: 3.5)
Review.create(poster_id: poster2.id, freelancer_id: freelancer4.id, review: "I can't work with this person", rating: 1)
# r2 = Review.create(poster_id: Poster.second.id, freelancer_id: Freelancer.second.id, review: "not cool", rating: 5)
# r3 = Review.create(poster_id: Poster.third.id, freelancer_id: Freelancer.third.id, review: "very cool", rating: 2.5)
# r4 = Review.create(poster_id: Poster.fourth.id, freelancer_id: Freelancer.fourth.id, review: "so uncool", rating: 3.5)
# r5 = Review.create(poster_id: Poster.fifth.id, freelancer_id: Freelancer.fifth.id, review: "no", rating: 1.5)



