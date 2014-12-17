require 'active_record'

ActiveRecord::Base.establish_connection ({
	:adapter => "postgresql",
	:database => "word_play"
})