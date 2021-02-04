class CreateDogsitters < ActiveRecord::Migration[6.1]
  def change
    create_table :dogsitters do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
