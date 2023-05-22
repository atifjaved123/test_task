class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages, id: :uuid do |t|
      t.string :url
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
