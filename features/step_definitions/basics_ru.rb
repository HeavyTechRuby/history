Дано('я гость') do
  context.set_user Testing::Guest.new
end

Когда('я открываю главную страницу') do
  visit "/"
end

Затем('вижу текст {string}') do |text|
  expect(page).to have_content text
end
