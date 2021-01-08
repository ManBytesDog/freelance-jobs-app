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


10.times do
    Poster.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, address: Faker::Address.full_address, age: Faker::Number.between(from: 18, to: 60), username: "manbytes", password: "123123123")
end

10.times do 
    Freelancer.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, age: Faker::Number.between(from: 18, to: 65), email: Faker::Internet.email, certifications: Faker::Job.key_skill, bio: "blah blah blah about me blah", username: "manbytes", password: "123123123")
end

job1 = Job.create(poster_id: Poster.first.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 100)
job2 = Job.create(poster_id: Poster.second.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 200)
job3 = Job.create(poster_id: Poster.third, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 300)
job4 = Job.create(poster_id: Poster.fourth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 400)
job5 = Job.create(poster_id: Poster.fifth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 500)
job6 = Job.create(poster_id: Poster.sixth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 100)
job7 = Job.create(poster_id: Poster.seventh.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 200)
job8 = Job.create(poster_id: Poster.eigth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 300)
job9 = Job.create(poster_id: Poster.ninth.id, job_title: Faker::Job.title, job_type: Faker::Job.field, description: "do this", remote_job: true, compensation: 400)


con1 = Contract.create(job_id: job1.id, freelancer_id: Freelancer.first.id, bid_price: 10)
con2 = Contract.create(job_id: job2.id, freelancer_id: Freelancer.second.id, bid_price: 40)
con3 = Contract.create(job_id: job3.id, freelancer_id: Freelancer.third.id, bid_price: 150)
con4 = Contract.create(job_id: job4.id, freelancer_id: Freelancer.fourth.id, bid_price: 200)
con5 = Contract.create(job_id: job5.id, freelancer_id: Freelancer.fifth.id, bid_price: 110)



r1 = Review.create(poster_id: Poster.first.id, freelancer_id: Freelancer.first.id, review: "cool", rating: 4.5)
r2 = Review.create(poster_id: Poster.second.id, freelancer_id: Freelancer.second.id, review: "not cool", rating: 5)
r3 = Review.create(poster_id: Poster.third.id, freelancer_id: Freelancer.third.id, review: "very cool", rating: 2.5)
r4 = Review.create(poster_id: Poster.fourth.id, freelancer_id: Freelancer.fourth.id, review: "so uncool", rating: 3.5)
r5 = Review.create(poster_id: Poster.fifth.id, freelancer_id: Freelancer.fifth.id, review: "no", rating: 1.5)



