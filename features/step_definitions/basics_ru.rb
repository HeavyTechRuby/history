Дано('я гость') do
  context.set_user Testing::Guest.new
end

Дано('я пользователь') do
  context.set_user Testing::User.new
end

Когда('я открываю главную страницу') do
  visit "/"
end

Затем('вижу текст {string}') do |text|
  expect(page).to have_content text
end

Когда(/^нажимаю на(?: кнопку)? "(.*?)"$/) do |item|
  click_on item
end

Когда('заполняю поле {string} со значением {string}') do |item, text|
  fill_in item, with: text
end

# TODO: use 'item' to select the right editor
When('заполняю многострочное поле {string} со значением {string}') do |_item, text|
  find('trix-editor').click.set(text)
end
