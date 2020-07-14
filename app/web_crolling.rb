require 'http'
require 'nokogiri'
# require 'httparty'
require 'byebug'

# html = HTTP.get("https://www.zillow.com/houston-tx/").to_s
# p html

# page = Nokogiri::HTML(html)
# puts "Address: " + page.css('address')[0].text
# puts "Price: " + page.css('div.list-card-price')[0].text
# puts "image: " + page.css('img').first.attributes["src"].value

# def scarper
#   url ='https://www.zillow.com/houston-tx/'
#   unparsed_page = HTTParty.get(url)
#   parsed_page = Nokogiri::HTML(unparsed_page)
#   byebug
# end

# scarper

def scarper
  url = 'https://www.zillow.com/houston-tx/'
  unparsed_page = HTTP.get(url).to_s
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
  # house: parsed_page.css('article.list-card')
  # address: home.css('address')
  # prices: home.css('div.list-card-price')
  # detail:home.css('ul.list-card-details')
  # bds:home.css('ul.list-card-details li')[0].text
  # bath:home.css('ul.list-card-details li')[1].text
  # sqft:home.css('ul.list-card-details li')[2].text
  # link: home.css('a.list-card-img').map{|link| link.attributes["href"].text}


  # house_card = parsed_page.css('ul.photo-cards')
  # address = house_card.css('li address')
  # house_card.css('li address').map{|address| address.text}
  # price = house_card.css('li div.list-card-price')
  # house_card.css('li div.list-card-price').map{|price| price.text}
  # image: house_card.css('a>img').map{|i| i.attributes["src"].value}
end

scarper