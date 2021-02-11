class RemoveCitiestoUsers < ActiveRecord::Migration[5.2]
  
  def change
    change_table :users do |t|
      t.remove_references :cities
    end
  end 
  
  def change
    remove_column :users, :description, :string
    end

  def change
    remove_column :users, :age, :integer
      end
end
