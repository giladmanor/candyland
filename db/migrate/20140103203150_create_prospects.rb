class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.references :account, index: true
      t.references :user, index: true
      t.string :name
      t.string :gender
      t.string :age
      t.string :location
      t.string :twitter
      t.string :facebook
      t.string :blog
      t.text :other
      t.text :likes

      t.timestamps
    end
  end
end
