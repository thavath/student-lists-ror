class CreateStudentts < ActiveRecord::Migration
  def change
    create_table :studentts do |t|
      t.string :name
      t.string :namejp
      t.string :sex
      t.string :types
      t.string :company
      t.string :level
      t.date :dayofbirth
      t.integer :age
      t.string :work
      t.date :datego
      t.date :dateinput
      t.string :nationality
      t.integer :zipcode
      t.string :prefecture
      t.string :city
      t.string :building
      t.string :telephone
      t.string :education
      t.string :email
      t.string :remail
      t.string :pas
      t.string :pass

      t.timestamps null: false
    end
  end
end
