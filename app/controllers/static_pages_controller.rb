class StaticPagesController < ApplicationController

  def home
    @ap=Post.where(:user_id => 1).last(3)
    @up=Post.where.not(:user_id => 1).last(2)
  end

  def directory
    @users=User.paginate(page: params[:page], :per_page => 21).order(YOL: :desc)
  end

  def contribute
  end

  def contact
  end

  def about
  end

  def feedback
  end

  def news
    @adp=User.first.posts.paginate(page: params[:page], :per_page => 5)
  end
end
