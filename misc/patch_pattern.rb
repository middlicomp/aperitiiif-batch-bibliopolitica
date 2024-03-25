Dir.glob("./src/data/CSL*/*").each do |path|
  base = File.basename(path)
  next if base.start_with? "CSL"

  dir     = File.dirname(path)
  item_id = File.basename(dir)
  target  = "#{dir}/#{item_id}_#{base}"

  File.rename path, target
end