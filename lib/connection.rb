require 'active_record'

ActiveRecord::Base.establish_connection('postgresql://' + ENV["DB_INFO"] + '@127.0.0.1/word_play')


# when accessing locally
# ActiveRecord::Base.establish_connection ({
# 	:adapter => "postgresql",
# 	:database => "word_play"
# })

ActiveRecord::Base.logger = Logger.new(STDOUT)