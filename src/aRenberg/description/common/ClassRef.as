package aRenberg.description.common
{
	public class ClassRef
	{
		public function ClassRef(name:String)
		{
			_name = name;
		}
		
		private var _name:String;
		public function get name():String
		{ return _name; }
		
		//May return null!
		public function getClass():Class
		{
			try
			{
				import flash.utils.getDefinitionByName;
				return getDefinitionByName(_name) as Class;
			}
			catch (e:Error)
			{
				//Will throw errors for the following types
				//   *
				//   void
				//   null
				// Plus any classes not defined in the current ApplicationDomain
				
				// "undefined" will still work!				
			}
			
			//If all else fails or definition is not found
			return null;
		}
		
		
		public function toString():String
		{
			return "[ClassRef of " + _name + "]";
		}
	}
}