file = File.open('eruby.snippets', 'a')
File.read('html.snippets').each_line do |line|
  file.puts line
end

file.close
