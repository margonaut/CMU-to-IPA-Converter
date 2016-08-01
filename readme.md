## CMU to IPA Converter

This set of scripts was written in pursuit of a large and accurate data set containing English words and their phonetic transcriptions.

The Carnegie Mellon University Pronouncing Dictionary contains 130,000 English words and variants transcribed using their custom pronunciation symbols. These symbols can be mapped to the International Phonetic Alphabet.

#### CMU_cleanup.rb

This script takes the raw CMU dictionary and converts it to a cleaned up CSV. I'm removing alternate pronunciations for now.

#### cmu_to_ipa.rb

Using the symbol-to-symbol mapping defined in cmu_ipa_mapping.rb, this script translates CMU transcriptions to IPA transcriptions.
