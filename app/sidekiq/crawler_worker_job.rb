require 'nokogiri'
require 'typhoeus'

class CrawlerWorker
  include Sidekiq::Worker

  def perform(url)
    response = Typhoeus.get(url)
    document = Nokogiri::HTML(response.body)

    page = Page.new
    page.url = url
    page.title = document.css('title').text.strip
    page.content = document.css('body').text.strip
    page.save
  end
end