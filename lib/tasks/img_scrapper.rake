namespace :img_scrapper do
  desc "TODO"
  task :scrapping, [:url]=> :environment do |t, args|
    puts "\nProcess Started at : [#{Time.now.utc}]\n\n"
    begin
    	#rake img_scrapper:scrapping[url] to run the rake
      data = ScrapWebsite.get_scrapped_images(args[:url])
      puts "Image URLs:-============================#{data}"
    rescue Exception => ex
      puts ex.message
    end
    puts "\nProcess Ended at : [#{Time.now.utc}]\n\n"
  end
end
