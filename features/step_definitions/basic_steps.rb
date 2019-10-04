Given("I visit the landing page") do
  visit root_path
end

Given("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("the following products exists") do |table|
  table.hashes.each do |product|
    category = Category.find_or_create_by(title: product[:category])
    product.except!('category')
    FactoryBot.create( :product, product.merge(category: category))
  end
end

Given("the following product exists") do |table|
  table.hashes.each do |product|
    category = Category.find_or_create_by(title: product[:category])
    product.except!('category')
    FactoryBot.create( :product, product.merge(category: category))
  end
end

Given("the following categories exists") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end

Given("the following category exists") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("I choose {string}") do |element|
  choose Category.find_by(title: element)
end

Given("I am logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given("I click {string} on garlic bread") do |element|
  click_on element
end