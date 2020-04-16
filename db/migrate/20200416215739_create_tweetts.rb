class CreateTweetts < ActiveRecord::Migration[5.2]
  def change
    create_table :tweetts do |t|
      t.text :tweett

      t.timestamps
    end
  end
end
