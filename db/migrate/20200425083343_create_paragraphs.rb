class CreateParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :paragraphs do |t|
      t.string :title
      t.text :content
      t.article :references

      t.timestamps
    end
  end
end
