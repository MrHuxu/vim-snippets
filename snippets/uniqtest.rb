count = 0
key = Array.new
File.read('eruby.snippets').each_line do |line|
  if line[0..6] == 'snippet'
    key.push line[8..-2]
  end
end

p key.size - key.uniq.size
key.uniq.each do |e|
  if key.uniq.count(e) == 1 && key.count(e) >= 2
    p e
  end
end
