package aRenberg.description.common
{
	/**
	 * Keeps track of the various names used in the descriptor XML.
	 * 
	 * Currently only used in the descriptor XML for accessors.
	 */ 
	public class AccessType
	{
		public static const NAME:String = 'access';
		
		
		public static const READ_ONLY:String = 'readonly';
		public static const WRITE_ONLY:String = 'writeonly';
		public static const READ_WRITE:String = 'readwrite';
		
		public static function canRead(access:String):Boolean
		{ return Boolean( (access == READ_ONLY) || (access == READ_WRITE) ); }
		
		public static function canWrite(access:String):Boolean
		{ return Boolean( (access == WRITE_ONLY) || (access == READ_WRITE) ); }
		
		
		public function AccessType()
		{ /* Static class. Do not instantiate. */ }

	}
}