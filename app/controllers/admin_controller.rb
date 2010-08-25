class AdminController < ApplicationController
  before_filter :authorize_admin
  
  layout "application"

  #set active scaffolding and layout
  active_scaffold :user do |config|
    #config.theme = :blue
    #config.columns = [:email, :first_name, :last_name, :admin]
    #config.columns.exclude :created_at, :creator, :updated_at, :updater
    #config.columns[:admin].form_ui = :checkbox
    #config.list.sorting = {:id => 'ASC'}
    #config.list.per_page = 20   
  end
  
end
