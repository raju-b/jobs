class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
		t.string :title
		t.string :company_name
		t.string :url
		t.string :country
		t.string :state
		t.string :city
		t.text :description
		t.text :information
		t.text :skills, array: true, default: []
		t.timestamps
    end
  end
end
