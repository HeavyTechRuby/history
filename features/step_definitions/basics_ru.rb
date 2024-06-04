Дано('я гость') do
  context.set_user Testing::Guest.new
end

И('история с адресом {string} и телом {string}') do |address, body|
  Story.create!(address: address, body: body)
end

Когда('я открываю главную страницу') do
  visit "/"
end

Затем('вижу текст {string}') do |text|
  expect(page).to have_content text
end

И('нажимаю на {string}') do |item|
  click_on item
end

И('с комментарием {string}') do |text|
  Story.last.comments.create!(body: text)
end

Затем('заполняю поле {string} со значением {string}') do |item, text|
  fill_in item, with: text
end
