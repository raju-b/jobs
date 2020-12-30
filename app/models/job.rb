class Job < ApplicationRecord
	has_rich_text :description
	has_rich_text :information
end
