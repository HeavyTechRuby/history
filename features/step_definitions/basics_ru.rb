Затем('вижу текст {string}') do |text|
  expect(page).to have_content text
end

Когда('открываю главную страницу') do
  visit "/"
end