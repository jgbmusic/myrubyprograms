
####Text Analyzer####

filename = ARGV[0] || 'text.txt'              #saw this in Victor's mod of Matt's code--nice!
                                              #nice little touch that saves a lot of time
num_characters = 0
num_characters_notwhite = 0
num_lines = 0
num_words = 0
num_sentences = 0
num_paragraphs = 1
words_per_sentence = 0
sentences_per_paragraph = 0

if File.file?(filename)                       #seems prudent, check if file exists...
  File.open(filename, 'r') do |f1|
    f1.each_line do |line|

      chomped_line = line.chomp               #prob not necessary(?), but do a single 
                                              #chomp and assign it here
      num_characters += chomped_line.length                       
      num_characters_notwhite += chomped_line.split(/\w|['.?!-:;]/).length   
      num_lines += 1                                               
      num_words += chomped_line.split(/\s|-{2}/).length            #split on ' ' or '--')
      num_sentences += line.split(/[.?!]['\s]/).count - 1          #split on sentences that may or may not have
                                                                   #single quotes in them
      num_paragraphs += 1 if chomped_line.length == 0              
      words_per_sentence = num_words.to_f/num_sentences            
      sentences_per_paragraph = num_sentences.to_f/num_paragraphs
    end

    puts "Total characters, including white space:              #{num_characters}"
    puts "Alpha-Numeric Characters (not counting white space):  #{num_characters_notwhite}"
    puts "Lines of Text (includes blank lines):                 #{num_lines}"
    puts "Total Words:                                          #{num_words}"
    puts "Number of Sentences:                                  #{num_sentences}"
    puts "Number of Paragraphs:                                 #{num_paragraphs}"
    puts "Avg. Words per Sentence:                              %.1f" %words_per_sentence
    puts "Avg. Sentences per Paragraph:                         %.1f" %sentences_per_paragraph
  end

else
  puts "This file, #{filename}, does not exist."
end
