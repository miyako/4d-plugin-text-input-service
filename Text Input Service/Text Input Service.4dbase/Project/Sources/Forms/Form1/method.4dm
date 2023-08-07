$event:=Form event code:C388

Case of 
	: ($event=On Load:K2:1)
		
		INPUT SOURCE LIST(Column1)
		$size:=Size of array:C274(Column1)
		
		ARRAY TEXT:C222(Column2; 0)
		ARRAY TEXT:C222(Column3; 0)
		ARRAY TEXT:C222(Column4; 0)
		ARRAY PICTURE:C279(Column5; 0)
		
		For ($i; 1; $size)
			APPEND TO ARRAY:C911(Column2; INPUT SOURCE Get category(Column1{$i}))
			APPEND TO ARRAY:C911(Column3; INPUT SOURCE Get name(Column1{$i}))
			APPEND TO ARRAY:C911(Column4; INPUT SOURCE Get type(Column1{$i}))
			APPEND TO ARRAY:C911(Column5; INPUT SOURCE Get icon(Column1{$i}))
		End for 
		
	: ($event=On Selection Change:K2:29)
		
		If (Column1#-1)
			INPUT SOURCE SET(Column1{Column1})
		End if 
		
End case 