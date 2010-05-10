class AllController < ApplicationController
  
  def index
    @projects = @logged_user.projects
    last_id = (params[:last_id] || '0').to_i
    
    @prev_entry = last_id != 0 ? @logged_user.entries.find_by_id(last_id) : nil
    @entries = Entry.find(:all, 
      :limit => 25, 
      :order => 'start_date DESC')
    @last_entry = @entries.length > 0 ? @entries[-1].id : 0
    
    respond_to do |f|
      f.html {render 'entries/index'}
      f.js {render 'entries/index'}
    end
  end
  
end
