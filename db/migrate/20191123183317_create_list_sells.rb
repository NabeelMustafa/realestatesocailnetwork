class CreateListSells < ActiveRecord::Migration[5.2]
  def change
    create_table :list_sells do |t|
      t.string :address
      t.string :unit
      t.string :city
      t.string :state
      t.string :zip
      t.string :price
      t.string :virtual_tour_link
      t.string :home_type
      t.string :no_bed
      t.string :no_f_bath
      t.string :no_q_bath
      t.string :no_h_bath
      t.string :finished_sq
      t.string :lot_size
      t.string :year_built
      t.string :remodel_year
      t.string :hoa_dues
      t.string :basement_area
      t.string :garage_area
      t.string :description
      t.string :website
      t.string :my_views
      t.string :email
      t.string :ph_no
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
