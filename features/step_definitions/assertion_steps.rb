Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Then("I should be on {string} page") do |expected_page|
  expect(current_page).to eq edit_product_path(expected_page)
end

Then("I should not see {string}") do |string|
  expect(page).not_to have_content string
end
