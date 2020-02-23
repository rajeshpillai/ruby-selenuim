Given("a user goes to Amazon home page") do
    @browser.goto("http://www.amazon.com")
end

When("a user search for {string}") do |string|
    @browser.text_field(:id => "twotabsearchtextbox").wait_until_present
    @browser.text_field(:id => "twotabsearchtextbox").set "#{string}"
    @browser.send_keys :return
end

Then("amazon should return result for {string}") do |string|
    #@browser.link(:id => "bcKwText").wait_until_present
    
    #page_output = @browser.link(:id => "bcKwText").text.include? "#{string}"
    #expect(page_output).to eql(true)

    page_output = @browser.span(:class =>'a-text-bold').text.include? "#{string}"
    expect(page_output).to eql(true)
    @browser.close
end
