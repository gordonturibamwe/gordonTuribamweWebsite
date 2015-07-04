class Skill < ActiveRecord::Base
  belongs_to :about_user

	def skill_col
		self.skills
	end
end
