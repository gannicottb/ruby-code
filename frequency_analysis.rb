# Author: Brandon Gannicott
# Project: Frequency analyzer for the Evernote coding challenge
# Date: 10/11/13

# Write a function that takes two parameters: (1) a String representing a text document and 
# (2) an integer providing the number of items to return. 
# Implement the function such that it returns a list of Strings ordered by word frequency, 
# the most frequently occurring word first. Use your best judgement to decide how words are separated. 
# Your solution should run in O(n) time where n is the number of characters in the document. 
# Implement this function as you would for a production/commercial system. You may use any standard data structures. 

# Please send us a soft copy of your resume along with your solution.

class FrequencyAnalysis
	def build(doc, num)
		#Split the document into words. Contractions (don't, won't) are considered to be words, so apostrophes are allowed.
		words = doc.split(/[^\w']/).delete_if{|s| s.empty?}
		#Use a hash to store the word->frequency mappings
		freqs = Hash.new
		#for every word, if the word exists in the hash, increment its frequency. Otherwise, add it to the hash with a frequency of 1.
		words.each {|word| freqs.include?(word) ? freqs[word]+= 1 : freqs[word] = 1}			
		#Return an array sorted by frequency, limited by num
		freqs.sort_by{|k,v|v}.reverse!.take(num)
	end
end

