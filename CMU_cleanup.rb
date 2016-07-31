require 'csv'
require 'pry'

# Takes the raw CMU dictionary file provided by Cambridge,
# and writes it to a cleaner CSV in preparation for translation
# to IPA

CSV.open("assets/CMU_dictionary.csv", "wb") do |csv|
  File.open('assets/CMU_dictionary.txt', 'r') do |f|
    f.each_line do |line|
      unless /(\(\d\))/.match(line)
        csv << line.split(" ")
      end
    end
  end
end
