require 'pdftoimage'

Dir.glob("./misc/pdfs/*.pdf").each do |path|
  target_dir = "./src/data/#{File.basename path, '.pdf'}"
  FileUtils.mkdir_p target_dir
  PDFToImage.open(path) do |page|
    target = "#{target_dir}/#{page.page.to_s.rjust(3, '0')}.jpg"
    page.r(350).save(target)
  end
end

