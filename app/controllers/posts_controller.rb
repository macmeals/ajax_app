class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC") # 全てのレコードを＠postsへ取得する
    
  end
   #def new
    
   #end
  def create
    Post.create(contents: params[:content])
    redirect_to action: :index
  end
end
