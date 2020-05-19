puts "...destroying student data"
Student.destroy_all

puts "...destroying duck data"
Duck.destroy_all

puts "...creating students"
10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

puts "...creating ducks"
5.times do
  Duck.create(name: Faker::Creature::Dog.meme_phrase, description: Faker::Creature::Dog.breed, student_id: Student.all.sample.id)
end


