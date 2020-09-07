class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all # 全てのレコードを＠postsへ取得する
    
  end
  def new
    
  end
  def create
    Post.create(contents: params[:content])
    
  end
end
