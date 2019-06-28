# 4d-plugin-text-input-service
Commands to control the front-end text editor.

___deprecated___ 

use [4d-plugin-text-input-context](https://github.com/miyako/4d-plugin-text-input-context)

### Platform

| carbon | cocoa | win32 | win64 |
|:------:|:-----:|:---------:|:---------:|
||<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|||

* Windows向けは[こちら](https://github.com/miyako/4d-plugin-input-method-manager/)

### Version

<img src="https://cloud.githubusercontent.com/assets/1725068/18940648/2192ddba-8645-11e6-864d-6d5692d55717.png" width="32" height="32" /> <img src="https://user-images.githubusercontent.com/1725068/41266195-ddf767b2-6e30-11e8-9d6b-2adf6a9f57a5.png" width="32" height="32" />

![preemption xx](https://user-images.githubusercontent.com/1725068/41327179-4e839948-6efd-11e8-982b-a670d511e04f.png)

* Except ``INPUT SOURCE LIST`` ``INPUT SOURCE Get icon``

[1.1](https://github.com/miyako/4d-plugin-text-input-service/releases/tag/1.1)

[1.1-carbon](https://github.com/miyako/4d-plugin-text-input-service/releases/tag/1.1-carbon) for compatibility

![screenshot](https://github.com/miyako/4d-plugin-text-input-service/blob/master/images/1.png)

## Syntax

```
source:=INPUT SOURCE Get for language (language)
```

Parameter|Type|Description
------------|------------|----
language|TEXT|
source|TEXT|

```
INPUT SOURCE LIST (sources)
```

Parameter|Type|Description
------------|------------|----
sources|ARRAY TEXT|

```
source:=INPUT SOURCE Get
INPUT SOURCE SET (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```
category:=INPUT SOURCE Get category (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
category|TEXT|

```
source:=INPUT SOURCE Get ASCII
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```
icon:=INPUT SOURCE Get icon (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
icon|PICTURE|

```
name:=INPUT SOURCE Get name (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
name|TEXT|

```
type:=INPUT SOURCE Get type (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
type|TEXT|

```
INPUT SOURCE DISABLE (source)
INPUT SOURCE ENABLE (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```
layout:=KEYBOARD LAYOUT Get
layout:=KEYBOARD LAYOUT Get ASCII
layout:=KEYBOARD LAYOUT Get override
KEYBOARD LAYOUT SET OVERRIDE (layout)
```

Parameter|Type|Description
------------|------------|----
layout|TEXT|

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
