class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :online_elo
      t.integer :online_class
      t.integer :live_elo
      t.integer :live_class

      t.timestamps
    end
  end
end
