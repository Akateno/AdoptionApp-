class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.integer :dog_id
      t.string :job
      t.string :city
      t.integer :pets_owned
      t.string :image

      t.timestamps
    end
  end
end
