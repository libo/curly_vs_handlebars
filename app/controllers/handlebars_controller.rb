class HandlebarsController < ApplicationController
  def index
    # presenter = Handlebars::IndexPresenter.new(self)

    # I wish this was possible, it looks like it's not.
    # Damn :...-(
    # render(:index, presenter)

    # This of course works, but it's a bit ugly...
    text = FS::Template.new("app/views/handlebars/index.html.hbs").render(presenter)
    render(text: text)
  end
end
