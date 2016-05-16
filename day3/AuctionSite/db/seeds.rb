 (1..10).each do |i|
  p = User.create(name: "user number #{i}", email: "description #{i}")
  t = Product.new(name: "Product number #{i}", description: "description #{i}", date_limit: "#{(Date.new)+(1)}")
  
  t.save
end

puts "Projects created"