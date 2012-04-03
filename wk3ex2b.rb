###################
#Inserted Word######
###################

filename = ARGV[0] || word.txt

if File.exists?(filename)

  File.open(filename, "r+") do |f1|
    line_num = 0
    while line = f1.gets
      if line.include? 'word'
        f1.puts line.gsub!('word','inserted word')
        exit
      end
    end
  end


  end









else
  puts "File #{filename} does not exist."
end
