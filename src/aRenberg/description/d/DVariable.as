package aRenberg.description.d
{
	import aRenberg.description.common.MemberType;
	import aRenberg.description.metadata.IMetadata;

	public class DVariable extends DMember
	{
		public function DVariable(target:*, name:String, type:String, metadata:Vector.<IMetadata>)
		{
			super(target, name, type, MemberType.VARIABLE, true, true, metadata);
		}
	}
}