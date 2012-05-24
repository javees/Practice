Given /^As a user go to google.com.au$/ do
  puts "hello"
end

Then /^search for scoopon$/ do
  $browser.visit("/")
  $browser.find(:xpath, "//input[@name='q']").set("Scoopon")
  $browser.click_button( "gbqfb")
  sleep 5
end
Given /^As a user go to scoopon website$/ do
  $browser.visit("/")
  $browser.click_link("Sign In")
end
Then /^enter the user details$/ do
$browser.fill_in("EmailAddress", :with => 'javees@scoopon.com.au')
$browser.fill_in("Password", :with => 'testing')
$browser.find(:xpath,"//div[@id='BodyContentColumnInner']/form/div[2][@class='FormButtons']/input").click
sleep 5

end
