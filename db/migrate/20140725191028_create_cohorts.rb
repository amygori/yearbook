class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :year
      t.string :season

      t.timestamps
    end
  end
end
