package Generator {
	/* This class will be used to encode and enforce various constraints
	* on the final mystery: important factors such as the number of suspects,
	* consistency of the crime (making sure past crimes link back to current
	* suspects, if desired). At the next level, though, I think 
	* it would be really cute to have playesr unlock cards they could use to:
	* 1) Influence cases they get beforehand, deciding the number of suspects,
	* etc. You can also make sure suspects have names or items as requested by 
	* bythe player, or that the player is likely to dislike/suspect the culprit, or 
	* that the player will not feel bad for the victim.
	* 2) Identify "clues" to the case, wheren the same cards that define
	* a csae can be applied to new cases to test if they meet the requirements.
	* And, of course, I want these constraints to allow me to fully define
	* a case.
	*/
	
	public class MysteryConstraint {
		
		
		private var type:String;
		private var children:Array;

		// Initialization:
		public function MysteryTreeNode(t:String) 
		{
			type = t
			children = new Array();
		}

		public function grow(g:Grammar)
		{
			if(children.length < 1)
			{
				var possibleChildrenTypes:Array = g.getDerivations(type);
				if(possibleChildrenTypes == null || possibleChildrenTypes.length < 1)
					return;
				var choice = Math.floor(Math.random()*possibleChildrenTypes.length);
				var childrenStrings = possibleChildrenTypes[choice].split(" ");
				for(var stringIndex in childrenStrings)
				{
					var grandChildren = childrenStrings[stringIndex].split("=>");
					addChild(new MysteryTreeNode(childrenStrings[stringIndex]));
				}
			}
			else
			{
				for(var child in children)
				{
					children[child].grow(g);
				}
			}
		}

		public function dumpEvidence()
		{

			if(children.length < 1)
			{
				trace("Evidence of "+type);
				return;
			}
			for(var child in children)
			{
				children[child].dumpEvidence();
			}
		}

		public function addChild(child:MysteryTreeNode)
		{
			children.push(child);
		}

		public function closure(g)
		{
			if(children.length < 1)
			{
				var evidenceNode = new MysteryTreeNode("Evidence");
				addChild(evidenceNode);
				return;
			}
			for(var child in children)
			{
				children[child].closure(g);
			}
		}

		public function printMystery(prefix:String)
		{
			trace(prefix+": "+type);
			for(var child in children)
			{
				children[child].printMystery(prefix+"|--");
			}
			
		}
	}
	
}
