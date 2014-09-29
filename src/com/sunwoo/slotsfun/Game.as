package com.sunwoo.slotsfun 
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.getTimer;
	/**
	 * @author Michael Sunwoo
	 */
	public class Game extends Sprite
	{
		private var _wheels:Wheels;
		private static var _game:Sprite;
		
		public function Game() 
		{
			_game = this;
			_wheels = new Wheels();
			addChild(_wheels);
			mouseChildren = false;
		}
	}
}