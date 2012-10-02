module MainHelper

	def print_navigation_menus(posts)
		pre = link_to "Previous", "#"
		nex = link_to "Next", "#"

		pre + " | " + nex
	end

end
