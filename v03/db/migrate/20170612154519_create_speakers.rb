class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :birth_year

      t.timestamps
    end
  end
end
