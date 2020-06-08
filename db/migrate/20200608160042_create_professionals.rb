class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :job_description
      t.string :pro_id
      t.string :office
      t.string :address
      t.string :city
      t.string :appointment
      t.string :price
      t.string :photo

      t.timestamps
    end
  end
end
