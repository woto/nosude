class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|
      t.references :collection, index: true, foreign_key: true
      t.references :collectionable, polymorphic: true, index: {name: 'collectionable'}

      t.timestamps null: false
    end
  end
end
