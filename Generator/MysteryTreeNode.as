package Generator {
	
	public class MysteryTreeNode {
		
		
		private var type:String;
		private var children:Array;

		// Initialization:
		public function MysteryTreeNode() 
		{
			trace("Mystery tree node generated!");
		}

		public function addChild(child:MysteryTreeNode)
		{
			children.add(child);
		}

		
	}
	
}
