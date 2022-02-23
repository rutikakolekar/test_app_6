#Those numbers in the filename is timestamp . 
#Rails use this to track migration files as they are created.
#This is the only reason we use generator to create this file. Instaed of creating this by hand.
#

class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      #t.timestamps
    end
  end
end
