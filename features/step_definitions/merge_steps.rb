Given /^following (.+) records? exist:$/ do |factory, table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

When /^I am logged as non-admin user "(.*)" with password "(.*)"$/ do |user_name, password|
  visit '/accounts/login'
  fill_in 'user_login', :with => user_name
  fill_in 'user_password', :with => password
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

Given /^I have merged "(.*?)" with "(.*?)"$/ do |article_1, article_2|
  fill_in 'merge_with', :with => Article.find_by_title(article_2).id.to_s
  click_button 'Merge'
end

