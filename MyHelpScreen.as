/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: MyHelpScreen
Purpose: Movie clip graphic for the help screen 

*************************************************************************/


package  {
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	public class MyHelpScreen extends MovieClip {
		var core:Object; 
		
		public function MyHelpScreen():void{
			//ADDS EVENT LISTENER
            this.addEventListener(Event.ADDED_TO_STAGE,onAdd);
        }
		
		public function onAdd(e:Event):void{
			//POSITION
			core = MovieClip(root); 
			this.x = 965;
			this.y = 540;
		}
}
}