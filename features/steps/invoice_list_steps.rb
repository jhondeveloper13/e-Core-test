
When('the user set {string} and password {string}') do |username, password|
@login_page = Login_page.new
@login_page.register(username, password)
end

Then('the application is redirect to Invoice List page') do
  expect(page).to have_css('h2', text: "Invoice List")  
end

Then('the application shows the message {string}') do |alert|
  expect(page).to have_css('div', text: alert)  
end
                                                                                
                                                                                        
When('click in first invoce details') do                                                
  @invoice_list_page = Invoice_list_page.new
  @invoice_list_page.click_invoice_1         
end                                                                                     
                                                                                        
Then('is possible validate') do  
  page.switch_to_window(page.windows[1])                                                       
  expect(page).to have_text("Rendezvous Hotel")
  expect(page).to have_text("14/01/2018")
  expect(page).to have_text("15/01/2018")
  expect(page).to have_text("110")
  expect(page).to have_text("0875")
  expect(page).to have_text("JOHNY SMITH")
  expect(page).to have_text("R2, AVENUE DU MAROC")
  expect(page).to have_text("123456")
  expect(page).to have_text("Superior Double")
  expect(page).to have_text("14/01/2018")
  expect(page).to have_text("15/01/2018")
  expect(page).to have_text("1")
  expect(page).to have_text("$150")
  expect(page).to have_text("USD $20.90 USD $19 USD $209")
end                                                                                     
                                       

