class CrawlerController < ApplicationController
  def index
    @pages = Page.all
  end

  def crawl
    url = params[:url]
    CrawlerWorker.perform_async(url)
    redirect_to root_path
  end
end
