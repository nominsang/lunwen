class HomeController < ApplicationController
  def index
    @page_title = "欢迎！"
  end

  def about
    @page_title = "关于"
  end
end
