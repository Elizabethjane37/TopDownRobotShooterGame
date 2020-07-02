/************************************************************************
Author: Elizabeth Legge
Dates: 12.6.20 - 3.7.20
File name: Robo
Purpose: The main player (user operated) for the game 
References:
Previous project (TheBestSpaceShipObjectOriented)
*************************************************************************/

package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	
	public class Robo extends MovieClip {
		//OBJECT, ROBO, VARIABLES
		var core:Object; 
		var leftPressed:Boolean = false;
		var rightPressed:Boolean = false;
		var mySpeed:Number = 15;
		

		
		public function Robo() {
			this.addEventListener(Event.ADDED_TO_STAGE, onAdd);
		}	
		

		//INITIALISES ROBO'S POSITION AND SIZE
		function onAdd(e:Event):void{
			core = MovieClip(root); 
			this.y = 900;
			this.x = stage.stageWidth/2;
			this.scaleX = 3;
			this.scaleY = 3;
			
			this.addEventListener(Event.ENTER_FRAME,loop);
		}
		
		//ADDS ROBO'S EVENT LISTENERS 
		function loop(e:Event){
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyRelease);
			stage.addEventListener(Event.ENTER_FRAME, keyControl);
			
			bound();		//boundary function, limiting the character to the stage size
			trace(core.numChildren);
			//COLLISION DETECTION 
			for (var i:uint = 13; i<core.numChildren; i++){		//logic error in code: when user visits help screen first, collision only works for unit = 13, but when help screen is not visited the uint value must be 7 in order for collision detection to work, this is due to children being added to stage. 
				var target:MovieClip = core.getChildAt(i);
				if (this.hitTestObject(target)){
					
					//removes listeners from robo before removing movie clip from stage
					this.removeEventListener(Event.ENTER_FRAME, loop);
					this.removeEventListener(Event.ADDED_TO_STAGE, onAdd);
					stage.removeEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
					stage.removeEventListener(KeyboardEvent.KEY_UP, onKeyRelease);
					stage.removeEventListener(Event.ENTER_FRAME, keyControl);
					core.removeChild(this);
					
				}
			}

        }
			

		
		// RESULTING HORIZONTAL MOVEMENT OF ROBOT USING ON KEY PRESS FUNCTION AND ON KEY RELEASE FUNCTION
		function keyControl(e:Event):void{
			if(leftPressed){
				this.x -= mySpeed;
			}
			if(rightPressed){
				this.x += mySpeed;
			}
			
		}
		
		
		//ON KEY PRESS RETURNING BOOLEAN 'TRUE'
		function onKeyPress(e:KeyboardEvent): void{
			if(e.keyCode == Keyboard.LEFT){
				leftPressed = true;
			}
			if(e.keyCode == Keyboard.RIGHT){
				rightPressed = true;
			}
		}
		
		
		//ON KEY RELEASE RETURNING BOOLEAN 'FALSE'
		function onKeyRelease(e:KeyboardEvent):void{
			if(e.keyCode == Keyboard.LEFT){
				leftPressed = false;
			}
			if(e.keyCode == Keyboard.RIGHT){
				rightPressed = false;
			}
		}
		
		
		//BOUNDARY FUNCTION, LIMITING THE PLAYERS MOVEMENT TO THE STAGE DIMENSIONS
		function bound():void{
			if(leftPressed && this.x + this.width/2 < 50 + this.width/2){
				this.x = 50;
			}
			else{
				mySpeed = 15;
			}
			
			if(rightPressed && this.x - this.width/2 > 1890 - this.width/2){
				this.x = 1890;
			}
			else{
				mySpeed = 15;
			}
		}
		
	}
		
}

	

