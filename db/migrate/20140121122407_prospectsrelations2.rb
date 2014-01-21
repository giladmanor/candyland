class Prospectsrelations2 < ActiveRecord::Migration
  def change
    remove_column :prospects, :gender
    add_column :prospects, :gender_id, :integer
    
    remove_column :prospects, :age
    add_column :prospects, :age_group_id, :integer
     
  end
end
