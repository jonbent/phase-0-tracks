earthquake = {
	above: {
		desc: 'top of bay bridge',
		ages: {
			jonny: 29,
			lois: 4
		},
		names: [
			"Johnny Morris",
			"Lois Sanders"
		]
	},
	below: {
		desc: 'bottom of bay bridge',
		ages: {
			arthur: 26,
			justin: 32,
			annie: 29
		},
		names: [
			"Arthur Wood", 
			"Justin Wood", 
			"Annie Wood"
		]
	}

}


puts earthquake[:below][:names][1]
puts earthquake[:above][:desc]
puts earthquake[:above][:ages][:jonny]