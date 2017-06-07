class Admin::ArticlesController < Admin::BaseController
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def edit
	end

	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to [:admin, @article]
		else
			render 'new'
		end
	end

	def update
	  if @article.update(article_params)
	    redirect_to [:admin, @article]
	  else
	    render 'edit'
	  end
	end

	def destroy
		@article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private
		def set_article
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:title, :text, :time, :banner, :subtitle, :pre_content)
		end

end