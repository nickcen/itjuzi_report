class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :sort
    end

    %w{尚未获投 种子轮 天使轮 Pre-A轮 A轮 A+轮 Pre-B轮 B轮 B+轮 C轮 D轮 E轮 F轮-上市前 已上市 新三板 战略投资 已被收购 不明确}.each_with_index do |name, idx|
      Round.create(name: name, sort: idx)
    end
  end
end
