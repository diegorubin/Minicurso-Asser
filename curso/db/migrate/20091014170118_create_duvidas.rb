class CreateDuvidas < ActiveRecord::Migration
  def self.up
    create_table :duvidas do |t|
      t.string :nome
      t.string :email
      t.references :exemplo

      t.timestamps
    end
  end

  def self.down
    drop_table :duvidas
  end
end

