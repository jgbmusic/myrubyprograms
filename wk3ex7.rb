filename = ARGV[0] || 'text.txt'              #saw this in Victor's mod of Matt's code--nice!
                                              #silly little touch that saves a lot of time
num_characters = 0
num_characters_notwhite = 0
num_lines = 0
num_words = 0
num_sentences = 0
num_paragraphs = 0

if File.file?(filename)                       #seems prudent
  File.open(filename, 'r') do |f1|
    f1.each_line do |line|

      chomped_line = line.chomp               #prob not necessary(?), but do a single 
                                              #chomp and assign it here
      num_characters += chomped_line.length
      num_characters_notwhite += chomped_line.delete(" ").length
      num_lines += 1
      num_words += chomped_line.split(" ").length
      num_sentences += chomped_line.split(/[.?!]/).count - 1


 
# num_sentences =  line.split('.').size + line.split('!').size + line.split('?').size 
        #total_sentences = total_sentences + num_sentences

    end

  puts ""
  puts ""
  puts "Total characters:  #{num_characters}, including white space."
  puts "Alpha-Numeric Characters:  #{num_characters_notwhite} (not counting white space)."
  puts "Lines of Text:  #{num_lines} (includes blank lines)"
  puts "Total Words:  #{num_words}"
  puts "Number of Sentences:  #{num_sentences}"
  puts "Number of Paragraphs:  #{num_paragraphs}"
  #puts "Avg. Words per Sentence:  #{words_per_sentence}"
  #puts" Avg. Sentences per Paragraph:  #{sent_per_par}"
end

=begin
else
  puts "This file, #{filename}, does not exist."
end
=end
end


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#spare code

=begin
	  while line = f1.gets

#        f = line.split('.').length      #f = number of "." per line
  #       g = line.split('!').length       #g = number of "!" per line
   #      h = line.split('?').length      #h = number of "?" per line
    #     num_sentences += (f + g + h)        

  lines = File.readlines(filename)
  text = lines.join  
  num_paragraphs = text.split(/\n\n/).length    #number of double newlines in the whole text

  words_per_sentence = bsum.to_f/num_sentences
  sent_per_par = num_sentences.to_f/num_paragraphs

=end