require "selenium-webdriver"

# DRIVER URL
# Firefox : https://github.com/mozilla/geckodriver/releases/tag/v0.26.0
# Chrome  : https://chromedriver.storage.googleapis.com/index.html?path=80.0.3987.106/

# Selenium::WebDriver::Chrome::Service.driver_path="/home/rajesh/Downloads/browser-drivers/chromedriver_linux64/chromedriver"

driver = Selenium::WebDriver.for :chrome

driver.navigate.to "https://en.wikipedia.org/wiki/Yukihiro_Matsumoto"
wait = Selenium::WebDriver::Wait.new(:timeout => 20)
name = wait.until {
  element_1 = driver.find_element(:class, "firstHeading")
}
puts name.text       


