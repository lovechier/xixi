package com.mole.billboard.component
{	
	import spark.components.Application;

	public class CustomApplication extends Application
	{
		[SkinState("normal")]  
		[SkinState("disabled")]  
		[SkinState("main")]  
		public function CustomApplication()
		{
			super();
		}
		
		private var _isMain:Boolean = false;

		public function get isMain():Boolean
		{
			return _isMain;
		}

		public function set isMain(value:Boolean):void
		{
			_isMain = value;
		}		
		override protected function getCurrentSkinState():String  
		{  
			if(isMain){
				return "main";
			}
			return "normal";  
		} 
		
	}
}