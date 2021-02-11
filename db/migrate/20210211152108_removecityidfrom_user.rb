class RemovecityidfromUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove_references :city
    end
  end 
end
