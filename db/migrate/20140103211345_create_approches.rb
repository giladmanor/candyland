class CreateApproches < ActiveRecord::Migration
  def change
    create_table :approches do |t|
      t.references :prospect, index: true
      t.string :content
      t.string :status
      t.string :result

      t.timestamps
    end
  end
end
