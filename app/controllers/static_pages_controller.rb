class StaticPagesController < ApplicationController

  def home
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
end
