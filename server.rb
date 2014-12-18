require './lib/connection.rb'
require './lib/classes.rb'
require 'sinatra'
require 'sinatra/reloader'
# require 'Mustache'
require 'pry'
#don't need to require these here as they are in the gemfile

# COMMAND LINE ARGUMENT VERSION
# word1 = ARGV[0]
# word2 = ARGV[1]

# word1_standardized = word1.downcase.gsub(" ", "")
# word2_standardized = word2.downcase.gsub(" ", "")

# need to account for punctuation

# word1_split = word1_standardized.split("")
# word2_split = word2_standardized.split("")

# if word1_split.length == word2_split.length
# 	result = word1_split.map { |letter| word2_split.include?(letter) }
# 	answer = result.all?
# 	if answer == true
# 		Anagram.create(word1: word1, word2: word2)
# 		print "#{word1} and #{word2} are anagrams. They were pushed to db: word_play, table: anagrams."
# 	else
# 		print "#{word1} and #{word2} are NOT anagrams."
# 	end
# else
# 	print "These aren't the same length hence not anagrams, you dolt."
# end

def get_all_anagrams
	all_anagrams = Anagram.all.each
	all_anagrams
end

get "/" do
	File.read('./views/anagram.html')
end

get "/anagram_list" do
	all_anagrams = get_all_anagrams
	Mustache.render(File.read('./views/anagrams_list.mustache'), anagrams: all_anagrams)
end

post "/anagram_list" do
	word1 = params[:word1]
	word2 = params[:word2]
	word1_standardized = word1.downcase.gsub(" ", "")
	word2_standardized = word2.downcase.gsub(" ", "")
	# need to account for punctuation
	word1_split = word1_standardized.split("")
	word2_split = word2_standardized.split("")

	if word1_split.length == word2_split.length
		result = word1_split.map { |letter| word2_split.include?(letter) }
		answer = result.all?
		if answer == true
			Anagram.create(word1: word1, word2: word2)
			all_anagrams = get_all_anagrams
			Mustache.render(File.read('./views/anagrams_list.mustache'), anagrams: all_anagrams)
		else
			File.read('./views/not_anagrams.html')
		end
	else
		File.read('./views/not_anagrams.html')
	end
end