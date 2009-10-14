class AddDuvidaInDuvidas < ActiveRecord::Migration
  def self.up
    add_column :duvidas, :duvida, :text
  end

  def self.down
  end
end

