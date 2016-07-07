class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
    @shorts = Short.all.reverse
    @longs = Long.all.reverse
      
  end
  def write
    post = Post.new(name: params[:name], content: params[:content])
    post.save

    redirect_to '/'
  end
  def market_enroll
    @shorts = Short.all.reverse
    @longs = Long.all.reverse
  end
  def short
    short = Short.new(title: params[:title])
    short.save

    redirect_to '/home/index'
  end
  def long
    long = Long.new(title: params[:title])
    long.save

    redirect_to '/home/index'
  end

  def mypage_sel

  end
end
