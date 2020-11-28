class CreateFoundations < ActiveRecord::Migration[6.0]
  def change
    create_table :foundations do |t|
      t.string :name

      t.timestamps
    end
  end
end
