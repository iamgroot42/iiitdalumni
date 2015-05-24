class StaticPagesController < ApplicationController

  def home
    @ap=Post.where(:user_id => 1).last(3)
    @up=Post.where.not(:user_id => 1).last(2)
  end

  def directory
    @curr_year = Time.now.year
    if params[:year_req].present?
      all_users = User.where(alumni: true, YOL: params[:year_req])
      @curr_year = params[:year_req]
    else
      all_users = User.where(alumni: true, YOL: @curr_year)
      if all_users.empty?
        all_users = User.where(alumni: true, YOL: @curr_year-1)
        @curr_year -= 1
      end
    end
    @users=all_users.paginate(page: params[:page], :per_page => 21).order(name: :asc)
  end

  def render_dir
    redirect_to :action => "directory", :year_req => params[:year_req]
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
