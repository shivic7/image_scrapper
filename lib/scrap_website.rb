require 'nokogiri'
require 'open-uri'
class ScrapWebsite
	def self.get_scrapped_images(url)
		doc = Nokogiri::HTML(open(url))
		img_srcs = doc.css('img').map{ |i| i['src'] }.uniq
		img_srcs = image_urls(url, img_srcs)
	end

	def self.image_urls(url, img_srcs)
    img_srcs.each_with_index do |img_src, index|
    	if img_src.present?
      	img_srcs[index] = img_src unless img_src.match(/http:\/\//)
      end
    end
    img_srcs
	end
end