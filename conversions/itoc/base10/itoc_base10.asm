;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Int to Char en base 10   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

intBase10ToChar:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> La valeur du int           ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	cmp	rax,10
	jge	badReturn
	cmp	rax,0
	jl	badReturn
	
	add	rax,'0'
	
	ret
	
	badReturn:
		mov	rax,-1
	ret

