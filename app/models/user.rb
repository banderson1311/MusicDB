class User < ActiveRecord::Base
  include Clearance::User
  
  #include first and last name
  #attr_accessible :first_name, :last_name
  
  #validate user details
  #validates_presence_of :lastname, :firstname
  
  #user user detail to add timestamp
  model_stamper  
end
