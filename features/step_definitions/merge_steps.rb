Given /^following (.+) records? exist:$/ do |factory, table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end