# 4d-plugin-text-input-service
Commands to control the front-end text editor.

![version](https://img.shields.io/badge/version-16%2B-8331AE)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20&color=blue)
[![license](https://img.shields.io/github/license/miyako/4d-plugin-jwt)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/4d-plugin-jwt/total)
![deprecated](https://img.shields.io/badge/-deprecated-inactive)

use [4d-plugin-text-input-context](https://github.com/miyako/4d-plugin-text-input-context)

* Windows向けは[こちら](https://github.com/miyako/4d-plugin-input-method-manager/)

![screenshot](https://github.com/miyako/4d-plugin-text-input-service/blob/master/images/1.png)

## Syntax

```4d
source:=INPUT SOURCE Get for language (language)
```

Parameter|Type|Description
------------|------------|----
language|TEXT|
source|TEXT|

```4d
INPUT SOURCE LIST (sources)
```

Parameter|Type|Description
------------|------------|----
sources|ARRAY TEXT|

```4d
source:=INPUT SOURCE Get
INPUT SOURCE SET (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```4d
category:=INPUT SOURCE Get category (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
category|TEXT|

```4d
source:=INPUT SOURCE Get ASCII
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```4d
icon:=INPUT SOURCE Get icon (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
icon|PICTURE|

```4d
name:=INPUT SOURCE Get name (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
name|TEXT|

```4d
type:=INPUT SOURCE Get type (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|
type|TEXT|

```4d
INPUT SOURCE DISABLE (source)
INPUT SOURCE ENABLE (source)
```

Parameter|Type|Description
------------|------------|----
source|TEXT|

```4d
layout:=KEYBOARD LAYOUT Get
layout:=KEYBOARD LAYOUT Get ASCII
layout:=KEYBOARD LAYOUT Get override
KEYBOARD LAYOUT SET OVERRIDE (layout)
```

Parameter|Type|Description
------------|------------|----
layout|TEXT|

### Examples

```4d
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
