class ArtistController < ApplicationController
  skip_before_filter :authenticate, :only => [:index, :list, :show]
  before_filter :authorize_admin, :only => [:delete, :destroy]
 
  #set active scaffolding and layout
  active_scaffold :artist do |config|
    config.theme = :blue
    config.columns = [:name, :biography, :hometown, :year_formed, :sort_artist]
    config.columns.exclude :created_at, :creator, :updated_at, :updater
    config.columns[:biography].form_ui = :textarea
    config.columns[:biography].options = {:rows => 5, :cols => 50, :truncate => 200}
    config.columns[:biography].list_ui = :text
    config.columns[:year_formed].options[:format] = nil 
    config.columns[:year_formed].label = "Year Formed/Born"
    config.list.sorting = {:name => 'ASC'}
    config.list.per_page = 20
    #move show and update to their own pages
    config.show.link.inline = false
    config.update.link.inline = false
    #config.create.multipart = true - may need for uploading images
    #config.update.multipart = true
  end
  layout "application"
  
  #authorization for various actions
  def create_authorized?
    return signed_in?
  end
  
  def update_authorized?
    return signed_in?
  end 
  
  def delete_authorized?
    return signed_in? && current_user.admin?
  end
end
