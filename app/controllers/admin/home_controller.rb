class Admin::HomeController < ApplicationController
  layout 'admin'
  def index
    @page_title = "控制台"
  end
end
