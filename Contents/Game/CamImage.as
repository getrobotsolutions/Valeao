package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.system.System;
	import flash.utils.ByteArray;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	
	[SWF( width="640", height="480", backgroundColor="0xFFFFFFFF", frameRate="30" )]
	public class CamImage extends MovieClip
	{
		private var _bitmapData: BitmapData;			//Cam 이미지 그릴 비트맵 데이타
		private var _bmpCam:Bitmap = new Bitmap();
		
		public function CamImage()
		{
			init();
		}
		
		private function init():void
		{
			// Cam Image 담을 BitmapData 
			_bitmapData = new BitmapData( 1280, 960, false, 0xFFFFFFFF );	//param{ width, height, transparent, fillColor } transparent는 투명도 사용여부
			_bmpCam.bitmapData = _bitmapData;
			_bmpCam.x = 0;
			_bmpCam.y = 0;
			addChild( _bmpCam );
		}
		
		public function SetLocation($x:int, $y:int):void
		{
			this.x = $x;
			this.y = $y;
		}
		
		public function SetSize($width:int, $height:int):void
		{
			_bitmapData.dispose();
			_bitmapData = new BitmapData( $width, $height, false, 0xFFFFFFFF );
			_bmpCam.bitmapData = _bitmapData;
		}
		
		public function SetData($data:BitmapData):void
		{
			_bmpCam.bitmapData = $data;
			/*var idx:int = 0;
			for (var h:int = 0; h < 480; h++)
			{
				for (var w:int = 0; w < 640; w++)
				{
					_bitmapData.setPixel32(w, h, $data[idx] + 256*$data[idx+1] + 65536*$data[idx+2] + 0xFF000000);
					idx+=4;
				}
			}*/
		}
	}
}