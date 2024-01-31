When('I am a guest') do
  context.set_user Testing::Guest.new
end

Given('I am a user') do
  context.set_user Testing::User.new
end

When('open the main page') do
  visit "/"
end

When('see text {string}') do |text|
  expect(page).to have_content text
end

When('click on {string}') do |item|
  click_on item
end

When('fill in {string} with {string}') do |item, text|
  fill_in item, with: text
end

# TODO: use 'item' to select the right editor
When('fill in rich text {string} with {string}') do |_item, text|
  find('trix-editor').click.set(text)
end
