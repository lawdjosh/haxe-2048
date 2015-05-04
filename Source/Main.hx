package;

import openfl.display.Sprite;

class Main extends Sprite {
	public function new() {
		super();
		this.addChild(new Tile(2));

		var tile = new Tile(2048);
		tile.x = 100;
		this.addChild(tile);
	}
}