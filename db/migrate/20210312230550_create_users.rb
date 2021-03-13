class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end

    create_table :posts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
