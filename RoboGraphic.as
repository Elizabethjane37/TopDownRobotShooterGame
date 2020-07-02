/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: RoboGraphic
Purpose: Movie clip graphic for the robot character 

*************************************************************************/


package  {
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	public class RoboGraphic extends MovieClip {
		var core:Object; 
		
		public function RoboGraphic():void{
			//ADDS EVENT LISTENER
            this.addEventListener(Event.ADDED_TO_STAGE,onAdd);
        }
		
		public function onAdd(e:Event):void{
			//POSITION
			core = MovieClip(root); 
			this.x = 1600;
			this.y = 550;
		}
}
}