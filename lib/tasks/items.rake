task :items_generation => :environment do
  h = []
  30.times do |n|
    next if n == 0
    h.push({ name: "Item_#{n}", description: "Some description", price: n })
  end
  Item.create(h)
end
