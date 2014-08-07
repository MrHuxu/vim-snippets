file = File.open('eruby2.snippets', 'a')
File.read('eruby.snippets').each_line do |line|
  file.puts line
  if line[0..6] == 'snippet'
    file.puts 'options word'
  end
end
