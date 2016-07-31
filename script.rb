require 'csv'
require 'pry'

CSV.open("assets/output.csv", "wb") do |csv|
  CSV.foreach('assets/test_cmu.csv') do |row|
    csv << row
  end
end
