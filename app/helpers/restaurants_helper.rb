module RestaurantsHelper
	# DU, 3/8/2018. Add Google Maps to reserverster.
	def google_map(center)
 	 "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
	end
end
