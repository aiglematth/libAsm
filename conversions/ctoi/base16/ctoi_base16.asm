;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Char to Int en base 16   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

charToBase16Int:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> La valeur du char          ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov	rbx,rax
	mov	rdx,rax
	
	sub	rax,'0'
	
	cmp	rax,10
	jge	testCharMaj
	cmp	rax,0
	jl	testCharMaj
	
	ret
	
	testCharMaj:
		sub	rbx,'A'
		
		cmp	rbx,6
		jge	testCharMin
		cmp	rbx,0
		jl	testCharMin
		
		mov	rax,rbx
		add	rax,10
	
	ret
	
	testCharMin:
		sub	rdx,'a'
		
		cmp	rdx,6
		jge	badReturn
		cmp	rdx,0
		jl	badReturn
		
		mov	rax,rdx
		add	rax,10
	
	ret
	
	badReturn:
		mov	rax,-1
	ret


