Дано('я гость') do
  context.set_user Testing::Guest.new
end

Дано('я пользователь') do
  context.set_user Testing::User.new
end

И('история с адресом {string} и телом {string}') do |address, body|
  Story.create!(address: address, body: body)
end

Затем('вижу текст {string}') do |text|
  expect(page).to have_content text
end

И('с комментарием {string}') do |text|
  Story.last.comments.create!(body: text)
end

Затем('заполняю поле {string} со значением {string}') do |item, text|
  fill_in item, with: text
end

Когда('я открываю главную страницу') do
  visit "/"
end

Когда(/^нажимаю на(?: кнопку)? "(.*?)"$/) do |item|
  click_on item
end

Затем('дебаг') do
  binding.irb
end

# TODO: use 'item' to select the right editor
When('заполняю многострочное поле {string} со значением {string}') do |_item, text|
  find('trix-editor').click.set(text)
end
