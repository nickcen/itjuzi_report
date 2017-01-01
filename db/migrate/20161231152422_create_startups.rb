class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :title
      t.string :des
      t.string :img
      t.string :tags
      t.string :loca
      t.date :found_date
      t.string :latest_round
    end
  end
end
