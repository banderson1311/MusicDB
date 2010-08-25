class Artist < ActiveRecord::Base
  #validation of artist items
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_numericality_of :year_formed, :only_integer => true, :message => 'must be a year'
  
  def sort_artist
    name.downcase
  end
end
