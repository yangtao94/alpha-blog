class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      #create title of table
      t.string :title
    end
  end
end
