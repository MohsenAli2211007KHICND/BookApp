class CreateBook < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string:title
      t.string:author
      t.string:description
      t.integer:page
      t.string:publish_year
      t.integer:price
      t.timestamps
    end
  end
end
