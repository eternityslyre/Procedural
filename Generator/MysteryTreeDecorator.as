/*************************************************************************************
* The MysteryTreeDecorator processes a tree after the fact to 
* 1. Consolidate Suspects
* 2. Add thematic elements
* 3. Change the mystery to add big plot twists!
*
* This allows players to specify various elements they'd like in their 
* procedurally generated mystery, and also allows the game to randomly
* select themes as "Hints" for players. (Imagine a narrator, telling players
* what to expect in the upcoming case! And a fortune teller, who makes eerily
* valuable predictions, if you know where to look.)

*******************************************************************************/
package Generator {
	
	public class MysteryTreeDecorator{
		
		
		private var type:String;

		// Initialization:
		public function MysteryTreeDecorator(t:String) 
		{
			type = t
		}

		public function decorateTree(MysterTreeNode root)
		{
		}

		public function populateChoices(MysteryTree tree)
		{
		}




	}
	
}

/***********************************************************************************
* Decorator Ideas:
* 1. Star-crossed lovers
* 2. Sci-fi theme
* 3. Western theme
* 4. Recurring Crime ("Murder, she wrote")
* 5. Thicker than water (Family conflict)
* 6. Femme Fatale (Deadly women)
* 7. Secret Identities
* 8. Skeletons in the Closet
* 9. "Follow the Money" - Financially motivated elements
* 10. The Patsy - someone is framed
* 11. Turnabout - someone is betrayed
* 12. Orphans (Baker street boys, little orphan annie)
* 13. Twins!
* 14. Godfather (Mafia, organized crime)
* 15. Castle/Mansion
* 16. It's always the Butler
* 17. Animal Assistance (Evidence found through NPC animal)
* 18. Murder on the orient express / cruise
* 19. Noir?
* 20. Spurned lover.
* 21. Costume/alias party
* 22. Prince of Denmark/Red Wedding (Everyone dies)
* 23. The Show Must Go On (Theater/Performance)
* 24. You Win Or You Die (Succession battle).
* 25. Taking them to the Grave - dead people involved in past crimes
* 26. A Dish Best Servced Cold - Revenge is one of the motives
* 27. The Reluctant Witness - A witness must be coerced with dirt on them or someone they care for
* 28. Altruantism - a witness is lying to protect the culprit
* 29. Locked-room mystery
* 30. Lone witness
**********************************************************************************/
