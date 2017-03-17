# 4d-plugin-text-input-service
Commands to control the front-end text editor.

### Platform

| carbon | cocoa | win32 | win64 |
|:------:|:-----:|:---------:|:---------:|
|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|||

### Version

<img src="https://cloud.githubusercontent.com/assets/1725068/18940649/21945000-8645-11e6-86ed-4a0f800e5a73.png" width="32" height="32" /> <img src="https://cloud.githubusercontent.com/assets/1725068/18940648/2192ddba-8645-11e6-864d-6d5692d55717.png" width="32" height="32" />

![screenshot](https://github.com/miyako/4d-plugin-text-input-service/blob/master/images/1.png)

Commands
---

```
// --- Input Source
INPUT_SOURCE_Get_for_language
INPUT_SOURCE_LIST
INPUT_SOURCE_SET
INPUT_SOURCE_Get
INPUT_SOURCE_Get_category
INPUT_SOURCE_Get_ASCII
INPUT_SOURCE_Get_icon
INPUT_SOURCE_Get_name
INPUT_SOURCE_Get_type
INPUT_SOURCE_DISABLE
INPUT_SOURCE_ENABLE

// --- Keyboard Layout
KEYBOARD_LAYOUT_Get_ASCII
KEYBOARD_LAYOUT_SET_OVERRIDE
KEYBOARD_LAYOUT_Get
KEYBOARD_LAYOUT_Get_override

```

Examples
---

```
$ascii:=INPUT SOURCE Get ASCII   //英数キーを押したときに選択されるもの
  //例: 
  //com.apple.inputmethod.Kotoeri.Roman
  //com.apple.keylayout.US

$current:=INPUT SOURCE Get   //現在のもの

$kana:=INPUT SOURCE Get for language ("ja")  //かなキーを押したときに選択されるもの
  //例:
  //com.apple.inputmethod.Kotoeri.Japanese
  //jp.co.ergo.egbridge_universal_2.component.Japanese
  //com.justsystems.inputmethod.atok22.Japanese
  //com.google.inputmethod.Japanese.base

If (Shift down)
  //ことえり英数をアンインストールする
INPUT SOURCE DISABLE ("com.apple.inputmethod.Kotoeri.Roman")
  //U.S.をインストールする
INPUT SOURCE ENABLE ("com.apple.keylayout.US")

  //U.S.を使用する
INPUT SOURCE SET ("com.apple.keylayout.US")
End if 
```
