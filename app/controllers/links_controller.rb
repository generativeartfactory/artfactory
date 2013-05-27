
class LinksController < ApplicationController
  
  # GET /
  def index    
    @links = Link.order( 'created_at desc' ).all
  end

  # GET /hot
  def hot
    @links = Link.hot
    render :index
  end

  # POST /
  def create
    l = Link.new( params[:link] )
    l.save!
    redirect_to :back    
  end

  # PUT /:id/vote/:type
  def vote
    l = Link.find( params[:id] )
    l.points += params[:type].to_i
    l.save!
    redirect_to :back    
  end
  
end  # class LinksController