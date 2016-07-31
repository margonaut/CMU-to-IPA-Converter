require 'csv'
require 'pry'
require_relative 'cmu_ipa_mapping'


CSV.open("assets/output.csv", "wb") do |csv|
  CSV.foreach('assets/test_cmu.csv') do |row|
    # binding.pry
    # csv << COLUMNS.map { |col| row[col] }
    csv << row
  end
end
