
Given('that the automation sandbox is on login Page') do
  @url = ENV['HOST']
  puts 'url -> ' + @url.downcase
  visit(@url.downcase)
end