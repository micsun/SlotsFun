package com.sunwoo.slotsfun 
{
	import flash.display.Sprite;
	
	/**
	 * @author Michael Sunwoo
	 */
	
	public class Wheels extends Sprite
	{
		private const MAX_WHEELS:int = 5;
		
		private var _wheels:Vector.<SlotMachineWheel>;
		
		public function Wheels() 
		{
			_wheels = new <SlotMachineWheel>[];
			
			var wheelAddOrder:Vector.<int> = new <int>[0, 4, 1, 3, 2];
			
			for (var i:int = 0; i < MAX_WHEELS; i++)
			{
				var index:int = wheelAddOrder[i];
				var wheel:SlotMachineWheel = new SlotMachineWheel();
				wheel.x = SlotMachineWheel.WHEEL_WIDTH * index + 10 * index - 140;
				_wheels.push(wheel);
				addChild(wheel);
			}
		}
	}
}