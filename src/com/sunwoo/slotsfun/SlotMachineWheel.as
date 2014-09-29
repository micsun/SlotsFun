package com.sunwoo.slotsfun 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.getTimer;
	
	/**
	 * @author Michael Sunwoo
	 */
	
	public class SlotMachineWheel extends Sprite
	{
		public static const WHEEL_WIDTH:int = 80;
		
		private const SLOT_VALUES:Vector.<String> = new <String>["BAR", "7", "Cherries", "Clover", "Lemon", "Horseshoe", "Dice", "Bell", "Orange", "Diamond", "Pikachu", "42"];
		
		private var _items:Vector.<WheelItem>;
		private var _rotationSpeed:Number;
		
		public function SlotMachineWheel(num_items:int = 10) 
		{
			_items = new <WheelItem>[];
			
			for (var i:int = 0; i < num_items; i++)
			{
				var item:WheelItem = new WheelItem(SLOT_VALUES[GameUtils.randInt(SLOT_VALUES.length)], i / num_items * 0x00FFFF + 0x690000);
				item.rotationX = 360 * (i / num_items);
				addChild(item);
				_items.push(item);
			}
			
			_rotationSpeed = (Math.random() * GameUtils.randInt(1, 10) + 1) * (GameUtils.randBool() ? 1 : -1);
			
			addEventListener(Event.ENTER_FRAME, onUpdate);
		}
		
		private function onUpdate(e:Event):void
		{
			rotationX += Math.sin(getTimer() / 10000 * _rotationSpeed) * 5;
			
			for (var i:int = 0; i < _items.length; i++)
			{
				var item:WheelItem = _items[i];
				var angle:Number = (rotationX + item.rotationX) % 360;
				
				if ((angle > 85 && angle < 265) || (angle < -85 && angle > -265))
				{
					_items[i].alpha = .5;
					setChildIndex(_items[i], 0);
				}
				else
				{
					_items[i].alpha = 1;
				}
			}
		}
	}
}