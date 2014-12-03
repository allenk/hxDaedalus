package hxDaedalus.graphics.internal;

import hxDaedalus.graphics.ISimpleDrawingContext;
import flash.display.Graphics;


class FlashDrawingContext implements ISimpleDrawingContext
{
	public var graphics(default, null):Graphics;

	public function new(graphics:Graphics) {
		this.graphics = graphics;
	}
	
	inline public function clear():Void {
		graphics.clear();
		trace("clear");
	}
	
	inline public function lineStyle(thickness:Float, color:Int, ?alpha:Float):Void
	{
		graphics.lineStyle(thickness, color, alpha);
	}
	
	inline public function beginFill(color:Int, ?alpha:Float):Void {
		graphics.beginFill(color, alpha);
	}
	
	inline public function endFill():Void {
		graphics.endFill();
	}
	
	inline public function moveTo(x:Float, y:Float):Void {
		graphics.moveTo(x, y);
	}
	
	inline public function lineTo(x:Float, y:Float):Void {
		graphics.lineTo(x, y);
	}
	
	inline public function drawCircle(cx:Float, cy:Float, radius:Float):Void {
		graphics.drawCircle(cx, cy, radius);
	}
	
	inline public function drawRect(x:Float, y:Float, width:Float, height:Float):Void {
		graphics.drawRect(x, y, width, height);
	}
}