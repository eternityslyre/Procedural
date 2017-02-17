package Generator {
	
	public class MysteryTree {
		
		var startNode:MysteryTreeNode;	
		// Initialization:
		public function MysteryTree() 
		{
			trace("Mystery tree generated!");
		}

		public function generate(g:Grammar)
		{
			var initialString = "Murder";
			for(var j = 0; j < 4; j++)
			{
				startNode = new MysteryTreeNode(initialString);
				for(var i = 0; i < 25; i++)
					startNode.grow(g);

				startNode.closure(g);
				startNode.printMystery("");
				startNode.dumpEvidence();
			}

			
		}

		public function generateTextMystery()
		{
		//	startNode.dumpEvidence();
		}

		
	}
	
}
