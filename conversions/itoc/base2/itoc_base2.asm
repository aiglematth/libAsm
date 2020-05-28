;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Int to Char en base 16   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

intBase2ToChar:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> La valeur du int           ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	cmp	rax,1
	jg	badReturn
	cmp	rax,0
	jl	badReturn
	
	add	rax,'0'
	
	ret
	
	badReturn:
		mov	rax,-1
	ret

