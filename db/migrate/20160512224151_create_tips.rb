class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.date :start_date
      t.date :end_date
      t.float :monday_amount
      t.float :tuesday_amount
      t.float :wednesday_amount
      t.float :thursday_amount
      t.float :friday_amount
      t.float :saturday_amount
      t.float :sunday_amount

      t.timestamps null: false
    end
  end
end
