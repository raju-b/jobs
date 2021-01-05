class Job < ApplicationRecord
	has_rich_text :description
	has_rich_text :information
	validates :title, presence:{message: "please enter job title"}
	validates :company_name, presence:{message: "please enter company_name"}
	validates :url, presence:{message: "please enter company url"}
	validates :country, presence:{message: "please enter country"}
	validates :state, presence:{message: "please enter state"}
	validates :city, presence:{message: "please enter city"}
	validates :description, presence:{message: "please enter job description"}
	validates :information, presence:{message: "please enter job information"}
	validates :skills, presence:{message: "please select skills"}

end
