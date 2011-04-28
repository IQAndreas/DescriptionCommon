package aRenberg.description.d
{
	import aRenberg.description.common.ClassRef;
	import aRenberg.description.common.MemberType;
	import aRenberg.description.metadata.IMetadata;

	public class DMethod extends DMember
	{
		public function DMethod(target:*, name:String, type:String, declaredBy:String, parameters:Vector.<DMethodParameter>, metadata:Vector.<IMetadata>)
		{
			super(target, name, type, MemberType.METHOD, true, false, metadata);
			
			_declaredBy = declaredBy;
		}
		
		
		private var _declaredBy:String;
		public function get declaredBy():ClassRef
		{ return new ClassRef(_declaredBy); }
		
		public function get returnType():ClassRef
		{ return this.type; }
		
		
		//Return a clone or the original?
		//It's times like these where I want a "readonly vector"!
		private var _parameters:Vector.<DMethodParameter>;
		public function get parameters():Vector.<DMethodParameter>
		{ return _parameters; }
		
		/*
		public function execute(... args):*
		{
			//TODO: Error checking (perhaps the description was incorrect?
			return Function(target[name]).apply(null, args);
		}*/
		
	}
}