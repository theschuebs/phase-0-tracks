game_board = {
	houses: {
		player_colors: [
			'red', 
			'green', 
			'yellow', 
			'black'
 		]
	},

	game_piece_men: {
		player_colors: [
		 	'red', 
		 	'green', 
		 	'yellow', 
		 	'black'
 		], 
 		description: [
			'spherical head',
			'conic body'
		]
 	},

	board: [],

	dice: 'black and white',
}

p game_board
p game_board[:houses][:player_colors][1]
p game_board[:dice]
p game_board[:game_piece_men][:description][0]
p game_board[:game_piece_men][:description].reverse
p game_board[:board].push("folds in half")
