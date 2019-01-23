class CreateMicroblogs < ActiveRecord::Migration[5.2]
  def change
    create_table :microblogs do |t|
      t.number :user
      t.string :blog

      t.timestamps
    end
  end
end
