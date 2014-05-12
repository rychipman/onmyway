module TabClassHelper
	def tab_class(thistab, item)
		base_class = "nav-tab"
		matches = item.identifier.scan(/\/(\w+)\//)
		if matches.nil? or matches.first.nil?
			return base_class
		elsif matches.first.first.eql?(thistab)
			return ("current-tab")
		else
			return base_class
		end
	end
end