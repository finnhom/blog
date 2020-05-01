class LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:comment_id])
    @like = @comment.likes.create(article: @article)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:comment_id])
    if @comment.likes.count != 0
      @comment.likes.first.delete
    end
    redirect_to article_path(@article)
  end
end
