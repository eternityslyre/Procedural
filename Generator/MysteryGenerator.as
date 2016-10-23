package Generator {
	
	public class MysteryGenerator {
		
		private var grammar:Grammar;
		private var grammarFileName:String = "Generator/MysteryGrammar.txt";
	
		// Initialization:
		public function MysteryGenerator() 
		{
			trace("Mystery generated!");
			grammar = new Grammar(grammarFileName,grammarFinished);
		}

		private function grammarFinished()
		{
			trace("Grammar loaded. I have no idea what to do with this.");
			grammar.printRules();
		}
	
		
	}
	
}
