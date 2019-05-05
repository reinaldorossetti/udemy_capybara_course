require 'capybara'
#require 'selenium-webdriver'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_max_wait_time = 30
$session = Capybara::Session.new(:firefox)
$session.visit("https://jqueryui.com/autocomplete/")

$session.within_frame 0 do
    puts 'test'
    elemx = $session.find('input#tags', visible: true)
    'java'.each_char{|letra|elemx.send_keys letra}
    $session.find('li div', text: "JavaScript", visible: true).click
end
sleep 30