class ArticlesController < ApplicationController

	#get "/articles"
	def index
		@articles = Article.all
	end

	#get "/articles/:id"
	def show
		@article = Article.find(params[:id])
	end

	#get "/articles/new"
	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	#post "/articles"
	def create
		@article = current_user.articles.new(article_params)
		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	#put "articles/:id"
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title,:body)
	end

end
