require "selenium-webdriver"

# Selenium::WebDriver::Chrome::Service.driver_path="/home/rajesh/Downloads/browser-drivers/chromedriver_linux64/chromedriver"
Selenium::WebDriver::Firefox::Service.driver_path="/home/rajesh/Downloads/browser-drivers/geckodriver-v0.26.0-linux64/geckodriver"


driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://en.wikipedia.org/wiki/Yukihiro_Matsumoto"
wait = Selenium::WebDriver::Wait.new(:timeout => 20)
name = wait.until {
  element_1 = driver.find_element(:class, "firstHeading")
}
puts name.text       


