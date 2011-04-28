package aRenberg.description.common
{
	//I hate these classes that only serve to hold constants!
	//It's best to keep the list of all types here in case any are added or removed in future FP versions.
	public class MemberType
	{
		
		public static const ACCESSOR:String = 	"accessor";
		public static const METHOD:String = 	"method";
		public static const VARIABLE:String = 	"variable";
		public static const CONSTANT:String = 	"constant";
		public static const CLASS:String = 		"class";
		
		public static const UNKNOWN:String = 	"unknown";
		
		
		// This seemed like the best place to keep the function,
		// though it really could use a better home!
		// Will return 'null' (instead of false) if it's a special case! :(
		public static function hasReadAccess(type:String):Object
		{
			switch (type)
			{
				case MemberType.METHOD : 
				case MemberType.VARIABLE : 
				case MemberType.CONSTANT : 
				case MemberType.CLASS : 
					return true;
					
				case MemberType.ACCESSOR : 
				case MemberType.UNKNOWN : 
					//return maybe!
					return null;
			}
			
			return null;
		}
		
		public static function hasWriteAccess(type:String):Object
		{
			switch (type)
			{
				case MemberType.VARIABLE : 
					return true;
				
				case MemberType.METHOD : //Calling a method with an argument is NOT the same as writing to it!
				case MemberType.CONSTANT : 
				case MemberType.CLASS : 
					return false;
					
				case MemberType.ACCESSOR : 
				case MemberType.UNKNOWN : 
					//return maybe!
					return null;
			}
			
			return null;
		}
		
		
		public function MemberType()
		{ /* Static class. Do not instantiate. */ }

	}
}