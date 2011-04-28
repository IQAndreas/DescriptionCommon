package aRenberg.description.d
{
	import aRenberg.description.common.ClassRef;
	import aRenberg.description.common.MemberType;
	import aRenberg.description.metadata.IMetadata;

	public class DAccessor extends DMember
	{
		public function DAccessor(target:*, name:String, type:String, isReadable:Boolean, isWriteable:Boolean, declaredBy:String, metadata:Vector.<IMetadata>)
		{
			super(target, name, type, MemberType.ACCESSOR, isReadable, isWriteable, metadata);
			
			_declaredBy = declaredBy;
		}
		
		private var _declaredBy:String;
		public function get declaredBy():ClassRef
		{ return new ClassRef(_declaredBy); }
	}
}