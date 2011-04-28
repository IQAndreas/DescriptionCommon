package aRenberg.description.d
{
	import aRenberg.description.metadata.IMetadata;
	
	import flash.system.IME;
	import aRenberg.description.common.ClassRef;

	public class Description
	{
		/** 
		 * Basically a wrapper class for all members, plus includes a few properties.
		 */ 
		public function Description(target:*, targetClass:String, baseClass:String, isDynamic:Boolean, isFinal:Boolean, isStatic:Boolean, members:Vector.<DMember>, metadata:Vector.<IMetadata>)
		{
			_target = target;
			
			_targetClass = targetClass;
			_baseClass = baseClass;
			
			_isDynamic = isDynamic;
			_isFinal = isFinal;
			_isStatic = isStatic;
			
			_members = members;
			_metadata = metadata;
		}
		
		private var _target:*;
		public function get target():*
		{ return _target; }
		
		
		//Since the name "class" is already reserved
		private var _targetClass:String;
		public function get targetClass():ClassRef
		{ return new ClassRef(_targetClass); }
		
		//Include this as well? It's in the descriptor anyway...
		private var _baseClass:String;
		public function get baseClass():ClassRef
		{ return new ClassRef(_baseClass); }
		
		
		private var _isDynamic:Boolean;
		public function get isDynamic():Boolean
		{ return _isDynamic; }
		
		private var _isFinal:Boolean;
		public function get isFinal():Boolean
		{ return _isFinal; }
		
		private var _isStatic:Boolean;
		public function get isStatic():Boolean
		{ return _isStatic; }
		
		
		private var _members:Vector.<DMember>;
		public function get members():Vector.<DMember>
		{ return _members.concat(); } //clone the return vector
		
		private var _metadata:Vector.<IMetadata>;
		public function get metadata():Vector.<IMetadata>
		{ return _metadata.concat(); } //clone the return vector
		
		//Retrieved dynamically, so calling this getter at different
		//times may get different results.
		//Should I make a new "DDynamicProperty" or return a DVariable?
		public function get dynamicProperties():Vector.<DVariable>
		{
			//If a property has "setPropertyIsEnumerable", it will NOT show up
			//in this list. Also, some properties may both show up in this list
			//as well as the "members" vector.
			
			var properties:Vector.<DVariable> = new Vector.<DVariable>();
			for (var propertyName:String in _target)
			{
				//Set the type as "*" or calculate the type?
				import flash.utils.getQualifiedClassName;
				var type:String = getQualifiedClassName(_target[propertyName]);
				
				//Cannot contain metadata, so just set as an emtpy vector
				properties.push(new DVariable(_target, propertyName, type, new Vector.<IMetadata>()));
			}
			
			return properties;
		}
		
	}
}