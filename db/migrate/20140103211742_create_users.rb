class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :account, index: true
      t.string   :login, index: true
      t.string   :password
      t.references  :role, index: true
      t.text     :data
      
      t.timestamps
    end
  end
end
