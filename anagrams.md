#Anagram Checker

- Anagrams are fun! If you aren't familiar with anagrams, read more about them  <a href="http://en.wikipedia.org/wiki/Anagram">here </a>. For example, 'listen' is an anagram of 'silent'.

###Part One
- We want to define a method that checks two words, to see if they are anagrams. If they are, your method should return "Anagrams confirmed!". If not, it should return "Sorry, no anagrams here, dog"
- Try to make sure your anagram checker works for two words regardless of capitalization or punctuation.
- Try and get it to work for words with spaces (Mr Mojo Risin is an anagram for Jim Morrison, for example)


###Part Two
- Write a command line application that takes two words as arguments, checks the words to see if they're anagrams, and adds them to a database of anagrams if they are. (Use ActiveRecord)
  - This should be a separate program that requires two other files to run: The model for your anagram objects and the connection to the database.

###Part Three
- Write a simple web application that displays all your anagrams and lets you add more through a form (but only if they're actually anagrams!)
(Use ActiveRecord)

###Part Four
- Research using rack-flash to flash a warning on the screen if a user tries to add an anagram that isn't one.
