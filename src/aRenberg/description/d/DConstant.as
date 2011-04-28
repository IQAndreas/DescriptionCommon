package aRenberg.description.d
{
	import aRenberg.description.common.MemberType;
	import aRenberg.description.metadata.IMetadata;

	public class DConstant extends DMember
	{
		public function DConstant(target:*, name:String, type:String, metadata:Vector.<IMetadata>)
		{
			super(target, name, type, MemberType.CONSTANT, true, false, metadata);
		}
	}
}