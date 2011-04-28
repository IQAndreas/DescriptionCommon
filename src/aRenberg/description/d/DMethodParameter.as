package aRenberg.description.d
{
	import aRenberg.description.common.ClassRef;

	public class DMethodParameter
	{
		//Include a reference to the DMethod?
		public function DMethodParameter(index:uint, type:String, optional:Boolean)
		{
			_index = index;
			_type = type;
			_optional = optional;
		}
		
		private var _index:uint;
		public function get index():uint
		{ return _index; }
		
		private var _type:String;
		public function get type():ClassRef
		{ return new ClassRef(_type); }
		
		private var _optional:Boolean;
		public function get optional():Boolean
		{ return _optional; }
		
	}
}