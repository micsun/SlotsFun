package com.sunwoo.slotsfun 
{
	/**
	 * @author Michael Sunwoo
	 */
	
	public class GameUtils 
	{
		public static function randBool():Boolean
		{
			return Math.random() < .5;
		}
		
		public static function randInt(max:int = 1, min:int = 0):int
		{
			return int(Math.random() * max + min);
		}
		
		public static function randUint(max:uint = 1, min:uint = 0):uint
		{
			return uint(Math.random() * max + min);
		}
	}
}