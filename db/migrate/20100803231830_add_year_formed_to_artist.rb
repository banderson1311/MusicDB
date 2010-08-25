class AddYearFormedToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :year_formed, :integer
  end

  def self.down
    remove_column :artists, :year_formed
  end
end
