Rails.application.routes.draw do
  get 'curly/index'

  get 'handlebars/index'

  root 'handlebars#index'
end
