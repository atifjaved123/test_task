Rails.application.routes.draw do
  root 'crawler#index'
  post 'crawl', to: 'crawler#crawl'
end
