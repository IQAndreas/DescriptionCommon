package aRenberg.description.d
{
	import aRenberg.description.common.ClassRef;
	import aRenberg.description.metadata.IMetadata;

	/**
	 * Name is short for "Description of a Member"
	 */ 
	public class DMember
	{
		
		public function DMember(target:*, name:String, type:String, memberType:String, isReadable:Boolean, isWriteable:Boolean, metadata:Vector.<IMetadata>)
		{
			_target = target;
			_name = name;
			_type = type;
			
			_metadata = metadata;
			
			_memberType = memberType;
			_isReadable = isReadable;
			_isWriteable = isWriteable;
		}
		
		private var _target:*;
		public function get target():*
		{ return _target; }
		
		private var _name:String;
		public function get name():String
		{ return _name; }
		
		private var _type:String;
		public function get type():ClassRef
		{ return new ClassRef(_type); }
		
		
		//Clone or return reference?
		private var _metadata:Vector.<IMetadata>;
		public function get metadata():Vector.<IMetadata>
		{ return _metadata; }
		
		
		private var _memberType:String;
		public function get memberType():String
		{ return _memberType; }
		
		private var _isReadable:Boolean;
		public function get isReadable():Boolean
		{ return _isReadable; }	
		
		private var _isWriteable:Boolean;
		public function get isWriteable():Boolean
		{ return _isWriteable; }
		
		
		/*
		public function getValue():*
		{
			if (isReadable)
			{
				return target[name];
			}
			
			//else
			//Or perhaps throw an error?
			return undefined;
		}
		
		public function setValue(value:*):void
		{
			//Wrap around a "try" just in case?
			if (isWriteable)
			{
				//Use any sort of casting or checking to see that "value"
				//is of the same type?
				target[name] = value;
			}
			
			//else
			//Throw an error or do nothing?
		}*/
		
	}
}