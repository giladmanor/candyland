class ProspectsController < AdminController
  
  def list
    cond = params[:id].present? ? ["name like ?","%#{params[:id]}%"] : "1=1"
    @entities = @account.prospects.find(:all,:conditions=>cond)
    
    render :list 
  end
  
  def show
    #do nothing, just show the fricking form
  end
  
  def feed
    @entity = Prospect
    render :feed, :layout=>false
  end
  
  def set_feed
    entity = params[:id].present? ? Approch.find(params[:id]) : Approch.new 
    entity.set(params.except(:id))
    
    if entity.save
      @info = "#{Approch} saved"
      logger.debug @info  
    else
      @error = "Server error: #{entity.errors.messages.values.join(', ')}"
      logger.debug @error
    end
    
    render :json=>{:ok=>"ok"}
  end
  
  
  def set
    #return unless params[:id].present?
    
    entity = params[:id].present? ? Prospect.find(params[:id]) : Prospect.new 
    entity.set(params.except(:id))
    entity.account = @user.account
    
    if entity.save
      @info = "#{@entity} saved"  
    else
      @error = "Server error: #{entity.errors.messages.values.join(', ')}"
    end
    redirect_to :action=>:list, :entity=>@entity, :info=>@info, :error=>@error
  end
  
  def delete
    @account.prospects.find(params[:id]).destroy
    redirect_to :action=>:list,  :info=>"#{@entity} with id #{params[:id]} Permanently deleted",  :entity=>params[:entity]
  end
  
  
  
  private 
  
  
  
  
  
end
