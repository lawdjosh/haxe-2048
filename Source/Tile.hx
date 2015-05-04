package;

import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.display.Graphics;
import openfl.text.TextField;
import openfl.text.TextFieldAutoSize;
import openfl.text.TextFormat;

class Tile extends Sprite {
    public function new(value:Int) {
        super();

        this.value = value;
        this.background = new Shape();
        this.addChild(background);
        this.text = new TextField();
        this.addChild(text);

        drawBackground();

        var textFormat = new TextFormat("assets/ClearSans-Regular", 40);
        this.text.defaultTextFormat = textFormat;
        this.text.embedFonts = true;

        this.text.autoSize = TextFieldAutoSize.CENTER;
        this.text.text = Std.string(this.value);
        this.text.x = (this.width - this.text.textWidth) / 2;
        this.text.y = (this.height - this.text.textHeight) / 2;
    }

    public function drawBackground() {
        this.background.graphics.beginFill(backgrounds.exists(this.value) ? backgrounds[this.value] : superBackground);
        this.background.graphics.drawRoundRect(0, 0, 100, 100, 15);
    }

    var value:Int;
    var background:Shape;
    var text:TextField;

    static var backgrounds:Map<Int, Int> = [2 => 0xeee4da, 4 => 0xede0c8, 8 => 0xf2b179, 16 => 0xf59563, 32 => 0xf67c5f, 64 => 0xf65e3b, 128 => 0xedcf72, 256 => 0xedcc61, 512 => 0xedc850, 1024 => 0xedc53f, 2048 => 0xedc22e];
    static inline var superBackground:Int = 0x3c3a32;
}