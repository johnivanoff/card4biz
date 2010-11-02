class AddWebsiteColumn < ActiveRecord::Migration
  def self.up
    add_column :accounts, :web_site, :string
  end

  def self.down
    remove_column :web_site, :web_site
  end
  
end
