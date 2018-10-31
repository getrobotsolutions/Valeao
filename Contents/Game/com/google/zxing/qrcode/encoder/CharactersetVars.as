package com.google.zxing.qrcode.encoder
{
	public class CharactersetVars extends Object
	{
		/**
		 *	com.google.zxing.qrcode.encoder.Encoder 에서 사용할 문자셋<br> 
		 * 
		 * 	DEFAULT_BYTE_MODE_ENCODING 담아서 사용
		 */		
		public static const SHIFT_JIS: String = "Shift_JIS";
		public static const CP437: String = "Cp437";
		public static const ISO8859_2: String = "ISO8859_2";
		public static const ISO8859_3: String = "ISO8859_3";
		public static const ISO8859_4: String = "ISO8859_4";
		public static const ISO8859_5: String = "ISO8859_5";
		public static const ISO8859_6: String = "ISO8859_6";
		public static const ISO8859_7: String = "ISO8859_7";
		public static const ISO8859_8: String = "ISO8859_8";
		public static const ISO8859_9: String = "ISO8859_9";
		public static const ISO8859_11: String = "ISO8859_11";
		public static const ISO8859_15: String = "ISO8859_15";
		public static const UTF_8: String = "UTF-8";
		public static const ISO_8859_1: String = "ISO-8859-1";
			
		public function CharactersetVars()
		{
			throw new Error( 'CharactersetVars is only static' );
		}
	}
}