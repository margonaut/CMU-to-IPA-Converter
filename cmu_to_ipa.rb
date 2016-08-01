require 'csv'
require 'pry'
require_relative 'cmu_ipa_mapping'

CSV.open("assets/IPA_dictionary.csv", "wb") do |csv|
  CSV.foreach('assets/CMU_dictionary.csv') do |row|
    word = row.shift
    result = row.map { |cmu| CMU_IPA_MAPPING[cmu.to_sym] }
    result.unshift(word)
    csv << result
  end
end
