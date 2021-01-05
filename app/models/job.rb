class Job < ApplicationRecord
	has_rich_text :description
	has_rich_text :information
	validates :title, presence:{message: "Please enter job title"}
	validates :company_name, presence:{message: "Please enter company name"}
	validates :url, presence:{message: "Please enter company url"}
	validates :country, presence:{message: "Please enter country"}
	validates :state, presence:{message: "Please enter state"}
	validates :city, presence:{message: "Please enter city"}
	validates :description, presence:{message: "Please enter job description"}
	validates :information, presence:{message: "Please enter job information"}
	validates :skills, presence:{message: "Please select skills"}

end
