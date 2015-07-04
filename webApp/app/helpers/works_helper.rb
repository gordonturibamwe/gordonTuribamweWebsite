module WorksHelper

	def work(text)
		text.work_empty?
	end

	def end_date(work)
		"Present" if work.end.day == Time.now.day
	end
	def des(work)
		# work.description.inspect
		@rr = work.description.split(" ")
	end
end
