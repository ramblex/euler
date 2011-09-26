# Grabs the problem statement for each of the euler problems

require 'rubygems'
require 'hpricot'
require 'open-uri'

def wrap_text(txt, col = 80)
  txt.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
end

def prepend_to_file(text, filename)
  f = File.open(filename, "r")
  original_contents = f.read
  f.close
  f = File.open(filename, "w")
  f.write(text)
  f.write(original_contents)
  f.close
end

Dir.glob('euler-*.rb').each do |problemFile|
  problemFile =~ /^euler-([0-9]+).rb$/
  doc = Hpricot(open("http://projecteuler.net/problem=#{$1}"))
  txt = wrap_text(doc.search("//div[@class='problem_content']/*//text()").join("")).map do |line|
    line = "# #{line}"
  end
  prepend_to_file(txt.join("").gsub!(/\r/, ""), problemFile)
  puts "Processed #{problemFile}."
end
