//%attributes = {"invisible":true}
$ascii:=INPUT SOURCE Get ASCII  //英数キーを押したときに選択されるもの
//例: 
//com.apple.inputmethod.Kotoeri.Roman
//com.apple.keylayout.US

$current:=INPUT SOURCE Get  //現在のもの

$kana:=INPUT SOURCE Get for language("ja")  //かなキーを押したときに選択されるもの
INPUT SOURCE SET($kana)

//例:
//com.apple.inputmethod.Kotoeri.Japanese
//jp.co.ergo.egbridge_universal_2.component.Japanese
//com.justsystems.inputmethod.atok22.Japanese
//com.google.inputmethod.Japanese.base

If (Shift down:C543)
	//ことえり英数をアンインストールする
	INPUT SOURCE DISABLE("com.apple.inputmethod.Kotoeri.Roman")
	//U.S.をインストールする
	INPUT SOURCE ENABLE("com.apple.keylayout.US")
	
	//U.S.を使用する
	INPUT SOURCE SET("com.apple.keylayout.US")
End if 