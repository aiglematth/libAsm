;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Int to Char en base 16   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

intBase16ToChar:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> La valeur du int           ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov	rbx,rax
	mov	rdx,rax
	
	cmp	rax,10
	jge	testCharMaj
	cmp	rax,0
	jl	badReturn
	
	add	rax,'0'
	
	ret
	
	testCharMaj:
		sub	rbx,10
		
		cmp	rbx,6
		jge	badReturn
		
		mov	rax,rbx
		add	rax,'a'
	
	ret
	
	badReturn:
		mov	rax,-1
	ret

