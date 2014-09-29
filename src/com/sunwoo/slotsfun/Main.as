package com.sunwoo.slotsfun
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	
	/**
	 * @author Michael Sunwoo
	 */
	
	[SWF(width="800", height="600", frameRate="60", backgroundColor="#FFFFFF")]
	public class Main extends Sprite
	{
		[Embed(source="/../assets/images/Frame.png")]
		private var _frame:Class;
		
		public static const WHEEL_ITEM_TEXT_ENABLED:Boolean = true;
		
		public static var mainStage:Stage;
		
		private var _game:Game;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			mainStage = stage;
			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			_game = new Game();
			_game.x = stage.stageWidth / 2 - SlotMachineWheel.WHEEL_WIDTH / 2;
			_game.y = stage.stageHeight / 2;
			addChild(_game);
			
			var frame:Bitmap = new _frame();
			addChild(frame);
		}
	}
}