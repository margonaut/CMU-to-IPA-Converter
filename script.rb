require 'csv'
require 'pry'
require_relative 'cmu_ipa_mapping'


CSV.open("assets/output.csv", "wb") do |csv|
  CSV.foreach('assets/test_cmu.csv') do |row|
    word = row.shift
    result = row.map { |cmu| CMU_IPA_MAPPING[cmu.to_sym] }
    result.unshift(word)
    csv << result

  end
end
