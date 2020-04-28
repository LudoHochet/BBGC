class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :text
      t.string :link
      t.string :label
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
