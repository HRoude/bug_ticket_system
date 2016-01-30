class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :submit_by
      t.string :title
      t.text :body
      t.string :tracker
      t.string :severity
      t.string :assignee
      t.string :state

      t.timestamps null: false
    end
  end
end
