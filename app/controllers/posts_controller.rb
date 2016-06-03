class PostsController < ApplicationController
  before_action :find_posts, only: [:show, :edit, :update, :destroy]

  def index

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Post is saved"
    else
      render 'new', notice: "The Post was not saved"
    end
  end

  def show

  end

  def edit

  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "article was successfully saved"
    else
      render 'edit', notice: "damn let's edit again"
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_posts
    @post = Post.find(params[:id])
  end
end
