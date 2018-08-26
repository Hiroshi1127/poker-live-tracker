class CreatePokerSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :poker_sessions do |t|
      t.references :user, foreign_key: true
      t.string :stakes
      t.string :place
      t.text :memo
      t.datetime :start_at
      t.datetime :stop_at
      t.integer :buy_in
      t.integer :cash_out
      t.string :currency

      t.timestamps
    end
  end
end
