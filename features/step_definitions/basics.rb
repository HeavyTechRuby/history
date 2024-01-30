When('I am a guest') do
  context.set_user Testing::Guest.new
end

Given('I am a user') do
  context.set_user Testing::User.new
end

When('I open the main page') do
  visit "/"
end

When('I see text {string}') do |text|
  expect(page).to have_content text
end


When('I click on {string}') do |item|
  click_on item
end

When('fill in {string} with {string}') do |item, text|
  fill_in item, with: text
end

