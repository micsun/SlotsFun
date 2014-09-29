package com.sunwoo.slotsfun 
{
	import flash.display.Sprite;
	import flash.filters.GlowFilter;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	/**
	 * @author Michael Sunwoo
	 */
	
	public class WheelItem extends Sprite
	{
		public static const ITEM_WIDTH:int = 80;
		public static const ITEM_HEIGHT:int = 130;
		
		private var _tf:TextField;
		private var _bg:Sprite;
		
		public function WheelItem(text:String = null, color:uint = 0xffffff)
		{
			_bg = new Sprite();
			addChild(_bg);
			_bg.z = -200;
			
			if (Main.WHEEL_ITEM_TEXT_ENABLED)
			{
				_tf = new TextField();
				var textFormat:TextFormat = new TextFormat();
				textFormat.align = TextFormatAlign.CENTER;
				_tf.defaultTextFormat = textFormat;
				_tf.x = _tf.width / -2;
				_tf.y = _tf.height / -2;
				_tf.z = -201;
				_tf.filters = [ new GlowFilter(0xffffff, 1, 5, 5, 10) ];
				addChild(_tf);
				setText(text == null ? "Some Item " + GameUtils.randInt() : text);
			}
			
			setColor(color);
		}
		
		public function setText(text:String):void
		{
			_tf.text = text;
			_tf.y = _tf.textHeight / -2;
		}
		
		public function setColor(color:uint):void
		{
			_bg.graphics.clear();
			_bg.graphics.beginFill(color);
			_bg.graphics.drawRect(WheelItem.ITEM_WIDTH / -2, WheelItem.ITEM_HEIGHT / -2, WheelItem.ITEM_WIDTH, WheelItem.ITEM_HEIGHT);
			_bg.graphics.endFill();
		}
	}
}