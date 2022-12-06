puts "✍🏻Start seeding...📝"
puts "======================================================="
(1..10).map do |i|
    hero = Hero.create(
        name: Faker::Movies::HarryPotter.character, 
        super_name: Faker::Fantasy::Tolkien.character
    )
    hero_power = HeroPower.create(
        strength: ['Strong', 'Weak', 'Average'].sample,
        hero_id: rand(1..10),
        power_id: rand(1..10)
    )

    power = Power.create(
        name: Faker::Movies::HarryPotter.spell,
        description: Faker::Movies::HarryPotter.quote
    )

    
end

puts "✅ Done seeding 🌱"