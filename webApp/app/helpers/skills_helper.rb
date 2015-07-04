module SkillsHelper
	def skills(skill)
		@arr = skill.skill_col.split(",")
	end
end
