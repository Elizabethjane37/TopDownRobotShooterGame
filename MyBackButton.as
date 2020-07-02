/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: MyBackButton
Purpose: Button oject taking user to frame 1 (main menu)
References:
https://www.eehelp.com/question/problem-with-button-validate/
https://stackoverflow.com/questions/9245112/need-help-actionscript-3-simple-button-class
*************************************************************************/


package  {
	
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	
	
	public class MyBackButton extends SimpleButton {
		private var stageRef:Stage;
		
		
		public function MyBackButton(stageRef:Stage, X:int, Y:int):void{
			//THREE VARIABLES SO POSITION CAN BE SET ON STAGE CODE
            this.stageRef = stageRef;
            this.x = X;
            this.y = Y;
            this.addEventListener(Event.ENTER_FRAME,loop);
        }
		
		
		public function loop(e:Event):void{
			//POSITION
			this.x = 1575;
			this.y = 935;
		}
		
	}
	
}
