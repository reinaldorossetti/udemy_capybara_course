require 'capybara'
#require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_max_wait_time = 30
$session = Capybara::Session.new(:chrome)
$session.visit("https://erp1.edebe.com.br:8085/?StartProg=SIGAMDI&Comm=TCP&Env=P12_PROD")

elem01 = $session.find('#COMP3014 > input').set "reinaldo"
elem02 = $session.find(:xpath, "//*[@id='COMP3016']/input")
" help".each_char{|letra|elem02.send_keys letra
sleep 0.5}
sleep 5