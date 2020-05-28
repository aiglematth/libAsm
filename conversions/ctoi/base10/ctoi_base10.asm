;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Char to Int en base 10   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

charToBase10Int:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> La valeur du char          ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	sub	rax,'0'
	
	cmp	rax,10
	jge	badReturn
	cmp	rax,0
	jl	badReturn
	
	ret
	
	badReturn:
		mov	rax,-1
	ret

