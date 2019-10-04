<<<<<<< HEAD
Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end
=======
Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Then("I should not see {string}") do |string|
  expect(page).not_to have_content string
end
>>>>>>> e7894292e8578b70ed1d1bd4f7a22fd0cdd3a412
