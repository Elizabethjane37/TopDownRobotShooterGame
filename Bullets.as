/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: Bullet
Purpose: Object fired from Robo(player) when user 'Clicks' 
References:
https://as3gametuts.com/2013/07/10/top-down-rpg-shooter-4-shooting/#more-1211
*************************************************************************/

package
{
    import flash.display.Stage;
    import flash.display.MovieClip;
    import flash.events.Event;
	
 
    public class Bullets extends MovieClip{
		//BULLET VARIABLES
		private var core:Object;
        private var stageRef:Stage; //to check if the bullet leaves the screen borders (did not get working)


 
        public function Bullets(stageRef:Stage, X:int, Y:int):void{
			//POSITION OF BULLET (DETERMINED IN STAGE CODE)
            this.stageRef = stageRef;
            this.x = X;
            this.y = Y;
            this.addEventListener(Event.ENTER_FRAME,loop);
        }
		
		
		public function loop(e:Event):void{
			//SPEED BULLET MOVES
			this.y -= 50;
 
			//if the bullet goes off the edge of the screen...
			//if(x > stageRef.stageWidth || x < 0 || y > stageRef.stageHeight || y < 0){
				//this.parent.removeChild(this); //remove the bullet
			//}
		}
    }
}