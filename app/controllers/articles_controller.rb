class ArticlesController < ApplicationController
  def show
    render locals: { article: Article.find_by(slug: params.fetch(:id)) }
  end
end
