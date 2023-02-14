class CreateLogistics < ActiveRecord::Migration[6.1]
  def change
    create_table :logistics do |t|
      t.string :company
      t.text :basic_info
      t.string :url
      t.text :content
      t.string :image
      t.string :rating

      t.timestamps
    end
  end
end
