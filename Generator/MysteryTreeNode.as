package Generator {
	
	public class MysteryTreeNode {
		
		
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
				addChild(new MysteryTreeNode("Evidence"));
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
