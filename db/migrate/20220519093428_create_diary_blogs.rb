class CreateDiaryBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_blogs do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.integer :calendar_id

      t.timestamps
    end
  end
end
