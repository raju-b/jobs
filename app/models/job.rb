class Job < ApplicationRecord
	has_rich_text :description
	has_rich_text :information

	validates :title, presence: {message: "Job title can't be blank"}
	validates :company_name, presence:{message: "Company Name can't be blank"}
	validates :url, presence:{message: "URL can't be blank"}
	validates :country, presence:{message: "Country can't be blank"}
	validates :state, presence:{message: "State can't be blank"}
	validates :city, presence:{message: "City can't be blank"}
	validates :description, presence:{message: "Job description can't be blank"}
	validates :information, presence:{message: "Job information can't be blank"}
	validates :skills, presence:{message: "Skills can't be blank"}

end
