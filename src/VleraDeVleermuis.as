/** VleraDeVleermuis.as - Feb 6, 2012
 *
 * Beschrijving: [Vlera de Vleermuis]
 * 
 * Bronnen
 * ZiekenautoVoorbeeld.as,
 * CasinoVoorbeeld.as @author Justus Sturkenboom <justus@ju5tu5.nl>
 *
 * Thanks to 
 * Bas de Vleeschhouwer, Marciano Schildmeijer
 * 
 * Copyleft 2012, all wrongs reversed.
 */
package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.ui.Mouse;
	
	import nl.hva.iam.Vleermuis;
	import nl.hva.iam.Zaklamp;
	
	public class VleraDeVleermuis extends Sprite
	{
		public var vlera:Vleermuis;
		public var vizier:Zaklamp;
		public var score:int;
		public var scoreVeld:TextField;
		public var scoreVeldOpmaak:TextFormat;
		
		// Plaatje embedden
		[Embed(source="nl/hva/iam/images/Achtergrond.jpg")]
		private var BackgroundPicture:Class;
		private var background:Bitmap;
		
		public var zwart:Sprite;
		
		public function VleraDeVleermuis()
		{
			// Zet schalen uit
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE; //afbeelding passend maken
			
			//muis verbergen
			Mouse.hide();
			
			// Voeg de achtergrond toe aan de display list
			background = new BackgroundPicture();
			background.width = stage.stageWidth;
			background.height = stage.stageHeight;
			addChild(background);
			
			vlera = new Vleermuis(); //benoem vleermuis
			addChild(vlera); //plaats vlera
			vlera.x = 400;
			vlera.y = 200;
			vlera.scaleX = 2; //vergroot vlera
			vlera.scaleY = 2;
			
			vizier = new Zaklamp();
			addChild(vizier); //plaats vizier
			vizier.scaleX = 2; //vergroot vizier
			vizier.scaleY = 2;
			
			zwartVlak(); //aanmaken voordat leave
			score = 0;	//score venster
			scoreVeld = new TextField();
			scoreVeld.x = 20;
			scoreVeld.y = 20;
			addChild(scoreVeld);
		
			
			//voeg event listener toe aan object stage
			stage.addEventListener(MouseEvent.MOUSE_MOVE, beweegZaklamp);
			stage.addEventListener(Event.ENTER_FRAME, beweegVleermuis);
			vlera.addEventListener(MouseEvent.CLICK, verplaatsVleermuis);
			stage.addEventListener(Event.MOUSE_LEAVE, cursorHide);
		}
		
		public function zwartVlak():void
		{
			zwart = new Sprite();
			addChild(zwart);
			zwart.graphics.beginFill(0x000000, 1);
			zwart.graphics.drawRect(0,0, 1024,768);
			zwart.graphics.endFill();
			zwart.visible = false;
		}
		
		public function cursorHide(e:Event):void //muis verlaat scherm
		{
		
				zwart.visible = true;
		}	
		
		public function beweegVleermuis(e:Event):void //eigenschappen beweeg event
		{
			// Zet vlera op een random positie op de x en y as
			vlera.x += (Math.random()*20)-10;
			vlera.y += (Math.random()*20)-10;
			
			if(vlera.x < 0 || vlera.x > 1024 - vlera.width) //wanneer buitenbeeld
			{
				vlera.x = 100;
			}
			if(vlera.y <0 || vlera.y > 768 - vlera.height)
			{
				vlera.y = 100;
			}
		}
		
		public function verplaatsVleermuis(e:Event):void // eigenschappen klik event
		{
			//verplaats random vlera bij klik op vlera
			vlera.x = (Math.random() *1000)+160;
			vlera.y = (Math.random() *700)-160;
			score++; //is score plus 1	
			scoreVeld.text = score.toString();	//behandel cijfer naar string, string naar textfield
			
			scoreVeldOpmaak = new TextFormat(); // tekst opmaak
			scoreVeldOpmaak.font = "Verdana";
			scoreVeldOpmaak.color = 0xFFFFFF;
			scoreVeldOpmaak.size = 40;
			scoreVeld.setTextFormat(scoreVeldOpmaak); //toewijzen opmaak aan scoreVeld
		}
		
		public function beweegZaklamp(event:MouseEvent):void //eigenschappen mouse event
		{
			zwart.visible = false;
			vizier.x = mouseX;
			vizier.y = mouseY;
		}
	}
}