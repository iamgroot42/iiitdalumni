class StaticPagesController < ApplicationController

  def home
  end

  def directory
    @users = User.all.order(YOL: :desc)
    # @users=User.paginate(page: params[:page], :per_page => 20)
  end

  def contribute
  end

  def contact
  end

  def about
  end

  def feedback
  end
end
