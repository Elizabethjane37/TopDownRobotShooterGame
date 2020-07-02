/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: BaRobo2
Purpose: Enemy encountered by robo(player) if collision detected game is over
References:
https://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7df3.html
*************************************************************************/

package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class BaRobo2 extends MovieClip {
		//BAD ROBOT VARIABLES
		var core:Object;
		private var scale:Number;
		
		
		
		public function BaRobo2() {
			//ADDING EVENT LISTENERS
			this.addEventListener(Event.ADDED_TO_STAGE, onStart);
			this.addEventListener(Event.ENTER_FRAME,loop);
		}
		

		function onStart(e:Event):void{
			//BAD ROBOT'S POSITION, SIZE AND ROTATION
			core = MovieClip(root);
			var scale = Math.random() + 1.5;
			this.x = Math.random() * stage.stageWidth;
			this.y = -this.height;
			this.rotation = Math.random() * 360;
			this.scaleX = scale* 1.5;
			this.scaleY = scale* 1.5;
		}
		
		
		function loop(e:Event):void{
			//BAD ROBOT'S SPEED
			this.y += 7;
		}
		
		//COLLISION DETECTION WORK IN PROGRESS
		/*function rip(e:Event) :void{
			for (var i:int = 6; i<core.numChildren; i++){
				var target:MovieClip = core.getChildAt(i);
				if (this.hitTestObject(target)){
					
					this.removeEventListener(Event.ADDED_TO_STAGE, onStart);
					this.removeEventListener(Event.ENTER_FRAME, loop);

					core.removeChild(this);
				}
			}
		}*/
	}
}