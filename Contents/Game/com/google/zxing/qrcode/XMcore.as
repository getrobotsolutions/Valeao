package com.google.zxing.qrcode
{
	import flash.utils.*;
	
	/**
	 * 자료출처 - http://www.diebuster.com/?p=1149 
	 */	
	public class XMcore extends Object
	{
		public function XLSbyte()
		{
			throw new Error( 'XLSbyte는 static 전용입니다.' );
		}

		static private var base:uint = 128;
		static private var encode:String = '!"#$%&()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［＼］＾＿｀ａｂｃｄｅｆｇｈｉｊ';
		
		static public function byteToString( $byte:ByteArray ):String
		{
			var result:String, i:uint, j:uint, position:int;
			position = $byte.position;
			$byte.position = 0;
			result = '';
			for( i = 0, j = $byte.length; i < j ; ++i ){
				result += encode.charAt( $byte.readByte() + base );
			}
			$byte.position = position;
			return result;
		}

		static public function stringToByte( $String:String ):ByteArray{
			var result:ByteArray, i:uint, j:uint;
			result = new ByteArray;
			for( i = 0, j = $String.length; i < j ; ++i ){
				result.writeByte( encode.indexOf( $String.charAt( i ) ) - base );
			}
			return result;
		}

		
	}
}