class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.string :frist_name
      t.string :last_name
      t.references :dojo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
