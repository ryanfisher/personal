module Admin
  class ArticlesController < AdminController
    layout 'admin'

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def edit
      @article = Article.find params.fetch(:id)
    end

    def create
      Article.create!(article_params)
      redirect_to admin_articles_path
    end

    def update
      Article.find(params[:id]).update(article_params)
      redirect_to admin_articles_path
    end

    private

    def article_params
      params.require(:article).permit(:title, :slug, :body, :category_id)
    end
  end
end
