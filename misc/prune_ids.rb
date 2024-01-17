data     = Dir.glob("./src/data/CSL00001/*")
to_prune = File.readlines('./misc/001_ids_to_prune.txt').map(&:strip)


data.each do |file|
  base = File.basename(file, '.jpg')
  File.delete(file) and puts base if to_prune.include?(base)
end