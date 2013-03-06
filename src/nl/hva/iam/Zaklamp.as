/** Placeholder.as - Feb 6, 2012
 * 
 * Beschrijving: [Zaklampt Vlera de Vleermuis]
 * 
 * Voorbeeld1.as - Nov 28, 2010 @author J.P. Sturkenboom <j.p.sturkenboom@hva.nl>
 * 
 * Copyleft 2012, all wrongs reversed.
 */
package nl.hva.iam
{
	import flash.display.Sprite;
	
	public class Zaklamp extends Sprite
	{
		
		public function Zaklamp()
			{
			graphics.beginFill(0x000000, 0.9);
			graphics.drawCircle(0, 0, 2000);
			
			graphics.lineStyle(10, 0x000000); //buitenste vizier
			graphics.drawCircle(0, 0, 80);
			graphics.endFill();
			
			graphics.lineStyle(2, 0xFFFF00); //binnenste vizier
			graphics.drawCircle(0, 0, 73);
			graphics.endFill()			
			graphics.endFill(); //vlak endfill
		}
	}
}