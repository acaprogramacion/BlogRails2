class PublicPostsController < ApplicationController
  layout 'public'
  def index
    @posts = Post.published
  end

  def show
    @post = Post.find_by url: (params[:url])
    @all_comments = @post.comments

    @comment = Comment.new
  end

  def create_comment
    @comment = Comment.create!(name: params[:name], content: params[:content], post_id: params[:post_id])

    if @comment
      redirect_to :back, notice: 'Comentario ha sido creado'
    end
  end

  def posts_category
    @category = Category.find(params[:id])
    @posts = @category.posts.published
  end


end
