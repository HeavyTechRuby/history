When('I am a guest') do
  context.set_user Guest.new
end

When('I open the main page') do
  visit "/"
end

When('I see text {string}') do |text|
  expect(page).to have_content text
end
