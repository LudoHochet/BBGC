class AddSuffixetoLink < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :suffixe, :string
  end
end
