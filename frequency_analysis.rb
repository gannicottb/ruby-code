# Write a function that takes two parameters: (1) a String representing a text document and 
# (2) an integer providing the number of items to return. 
# Implement the function such that it returns a list of Strings ordered by word frequency, 
# the most frequently occurring word first. Use your best judgement to decide how words are separated. 
# Your solution should run in O(n) time where n is the number of characters in the document. 
# Implement this function as you would for a production/commercial system. You may use any standard data structures. 

# Please send us a soft copy of your resume along with your solution.


def sort(doc, num)
	#Split the document into strings
	words = doc.split(/[^\w']/).delete_if{|s| s.empty?}
#/[^\w']/
	#Use a hash to store the word->frequency mappings
	freqs = Hash.new
	#for every string, add it to the hash with a frequency of 1 if it's not there else increment its frequency
	words.each {|word| freqs.include?(word) ? freqs[word]+= 1 : freqs[word] = 1}			
	#Return an array sorted by frequency	
	freqs.sort_by{|k,v|v}
end

doc = "Hi, this is the document you requested. Is the document good? Dear Regex: don't count !,@,#,$,%,^,&,*,;,{,}, or |,+,="
sort(doc, 10)
