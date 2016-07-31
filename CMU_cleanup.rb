require 'csv'
require 'pry'
require_relative 'cmu_ipa_mapping'


CSV.open("assets/CMU_dictionary.csv", "wb") do |csv|
  File.open('assets/CMU_dictionary.txt', 'r') do |f|
    f.each_line do |line|
      unless /(\(\d\))/.match(line)
        csv << line.split(" ")
      end
    end
  end
end
