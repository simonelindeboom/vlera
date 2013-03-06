/** Placeholder.as - Feb 6, 2012
 * 
 * Beschrijving: [Vlera Vleermuis]
 * 
 * Voorbeeld1.as - Nov 28, 2010 @author J.P. Sturkenboom <j.p.sturkenboom@hva.nl>
 * 
 * Copyleft 2012, all wrongs reversed.
 */
package nl.hva.iam
{
	import flash.display.Sprite;
	
	public class Vleermuis extends Sprite
	{
		public function Vleermuis()
		{
			graphics.beginFill(0x000000);
			graphics.moveTo(0, -5);
			graphics.lineTo(-10, -20); //links oog midden x-as
			graphics.lineTo(-20,-10);
			graphics.lineTo(-40, -40);
			graphics.lineTo(-60, 30); //buitenste hoek links
			graphics.lineTo(-40, 10);
			graphics.lineTo(-40, 40);
			graphics.lineTo(-20, 25);
			graphics.lineTo(-15, 50);
			graphics.lineTo(0, 30); //midden
			graphics.lineTo(15, 50);
			graphics.lineTo(20, 25);
			graphics.lineTo(40, 40);
			graphics.lineTo(40, 10);
			graphics.lineTo(60, 30); //buitenste hoek recht
			graphics.lineTo(40, -40);
			graphics.lineTo(20, -10);
			graphics.lineTo(10, -20); //rechts oog midden x-as
			graphics.lineTo(0,-5);
			graphics.endFill();
			
			//oog links
			graphics.beginFill(0xFFFF00); //geel
			graphics.moveTo(-25, 5); //begin lijn
			graphics.curveTo(-20, 25, -8, 8); //midden oog, eind lijn
			graphics.endFill();
			
			graphics.beginFill(0x000000); //pupil
			graphics.drawCircle(-17, 10, 2);
			graphics.endFill();
			
			//oog rechts
			graphics.beginFill(0xFFFF00);
			graphics.moveTo(25, 5);
			graphics.curveTo(20, 25, 8, 8);
			graphics.endFill();
			
			graphics.beginFill(0x000000); //pupil
			graphics.drawCircle(17, 10, 2);
			graphics.endFill();
			
			//mond 
			graphics.lineStyle(1, 0xFFFF00);
			graphics.moveTo(-10, 22);
			graphics.curveTo(0, 25, 10, 18);
			graphics.endFill();
			
		
			}
	}
}