package aRenberg.description.common
{
	import aRenberg.description.d.DMember;

	/**
	 * This data is related to the XML. Perhaps it fits better in the DescriptionParser
	 * rather than DescriptionCommon library.
	 */ 
	public class DescriptorType
	{
		
		public static const FACTORY:String = 		"factory";
		public static const TYPE:String = 			"type";
		public static const EXTENDS_CLASS:String = 	"extendsClass";
		
		public static const ACCESSOR:String = 	"accessor";
		public static const METHOD:String = 	"method";
		public static const VARIABLE:String = 	"variable";
		public static const CONSTANT:String = 	"constant";
		
		public static const METADATA:String = 	"metadata";
		public static const ARG:String = 		"arg";
		public static const PARAMETER:String = 	"parameter";
		
		public static const UNKNOWN:String = 	"unknown";
				
		
		public static function getMemberTypeByName(name:String):String
		{
			switch(name)
			{
				case DescriptorType.ACCESSOR: 	return MemberType.ACCESSOR;
				case DescriptorType.METHOD : 	return MemberType.METHOD;
				case DescriptorType.VARIABLE : 	return MemberType.VARIABLE;
				case DescriptorType.CONSTANT :	return MemberType.CONSTANT;
					
				case DescriptorType.FACTORY : // Class passed in
				case DescriptorType.TYPE : // instance passed in
					return MemberType.CLASS;
					
				default: 
					return MemberType.UNKNOWN;
			}
		}
		
		
		public function DescriptorType()
		{ /* Static class. Do not instantiate. */ }
		
	}
}