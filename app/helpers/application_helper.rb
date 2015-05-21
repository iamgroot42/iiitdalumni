module ApplicationHelper
	def alertSanitizer(s)
		return "info" if s == "notice"
		return "success" if s == "success"
		return "warning" if s == "alert"
		return "danger"
	end
end
