puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
flat1 = { name: 'Chez Tatie', address: '7 Avenue des Capucins', description: 'mini desc', price_per_night: 500, number_of_guests: 2 }
flat2 = { name: 'Chez Mamie', address: '8 Avenue des Capucins', description: 'mini desc', price_per_night: 600, number_of_guests: 3 }
flat3 = { name: 'Chez Papy', address: '9 Avenue des Capucins', description: 'mini desc', price_per_night: 200, number_of_guests: 2 }
flat4 = { name: 'Chez Moi', address: '10 Avenue des Capucins', description: 'mini desc', price_per_night: 100, number_of_guests: 4 }

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
