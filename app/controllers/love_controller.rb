class LoveController < ApplicationController
  before_action :set_host, only: [:show]
  
  def list
    @hosts = Host.all.reverse;
  end
  
  def main
    @host_count = Host.count;
  end
  
  def new
  end
  
  def submit_host
    
    @host = Host.new
    @host.name = params[:name]
    @host.gender = params[:gender]
    @host.age = params[:age]
    @host.title = params[:title]
    @host.content = params[:content]
    @host.save
    
    redirect_to '/list'

  end
  
  # get show/1
  def show
  end
  
  def join
    @join = Join.new
    @join.host_id = params[:host_id]
    @join.name = params[:name]
    @join.age = params[:age]
    @join.gender = params[:gender]
    @join.title = params[:title]
    @join.save
    
    redirect_to :back
  end
  
  private
  
  def set_host
    @list = Host.find(params[:host_id])
    
    if(@list.gender)
      @gender = "남자"
      @other = false
    else
      @gender = "여자"
      @other = true
    end
  end
end
