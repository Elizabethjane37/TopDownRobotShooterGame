/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: MenuBoard
Purpose: Main menu board (graphic)

*************************************************************************/

package  {
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	public class MenuBoard extends MovieClip {
		var core:Object; 
		
		public function MenuBoard():void{
			//ADDS EVENT LISTENER
            this.addEventListener(Event.ADDED_TO_STAGE,onAdd);
        }
		
		public function onAdd(e:Event):void{
			//POSITION
			core = MovieClip(root); 
			this.x = 615;
			this.y = 540;
		}

	}
	
}
