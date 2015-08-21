package fr.canope.hds.infosCentre.view 
{
	import flash.display.MovieClip;
	
	import fr.canope.hds.infosCentre.model.vo.Reservation;
	import fr.canope.hds.infosCentre.view.ActualitesMC;
	import fr.canope.hds.infosCentre.view.SalleMC;
	
	
	public class EcranMC extends MovieClip 
	{
		public var salle1_mc:SalleMC;
		public var salle2_mc:SalleMC;
		public var salle3_mc:SalleMC;
		public var salle4_mc:SalleMC;
		public var salle5_mc:SalleMC;
		public var salle6_mc:SalleMC;
		public var salle7_mc:SalleMC;
		public var salle8_mc:SalleMC;
		
		public var actualites_mc:ActualitesMC;
		public var message_mc:MessageMC;
		
		public var nomsSalles:Array = new Array("GILLES DE GENNES", "FOUJITA", "ESPACE ZEN", "JEAN COCTEAU", "LINO VENTURA", "MICHEL AUDIARD", "MICHEL SERRAULT", "SALLE VISIO");
		private var listeSalles:Array = new Array();
		
		public function EcranMC() {
			// constructor code
			with (listeSalles) {
				push(salle1_mc);
				push(salle2_mc);
				push(salle3_mc);
				push(salle4_mc);
				push(salle5_mc);
				push(salle6_mc);
				push(salle7_mc);
				push(salle8_mc);
				
			}
			afficheSalles();
			
		}
		private function afficheSalles():void {
			var maSalle:SalleMC;
			for (var i:uint;i<listeSalles.length;i++) {
				maSalle = SalleMC(listeSalles[i]);
				//trace (maSalle);
				maSalle.nomSalleTxt.text = nomsSalles[i];
				
			}
		}
		public function placeCreneau(resa:Reservation):void {
			var salleCible:SalleMC;
			
			switch (resa.salle) {
				case 1 :
					//GILLES DE GENNES
					salleCible = salle1_mc;
					break;
				case 2 :
					//FOUJITA
					salleCible = salle2_mc;
					break;
				case 3 :
					//ESPACE ZEN
					salleCible = salle3_mc;
					break;
				case 4:
					//JEAN COCTEAU
					salleCible = salle4_mc;
					break;
				case 5 :
					//LINO VENTURA
					salleCible = salle5_mc;
					break;
				case 6 :
					//MICHEL AUDIARD
					salleCible = salle6_mc;
					break;
				case 7 :
					//MICHEL SERRAULT
					salleCible = salle7_mc;
					break;
				case 8:
					//SALLE VISIO
					salleCible = salle8_mc;
					break;
				default :
					//on ne fait rien
					salleCible = null;
					break;
			}
			if (salleCible) {
				salleCible.afficheReservation(resa);
			}
		}
		
	}
	
}
