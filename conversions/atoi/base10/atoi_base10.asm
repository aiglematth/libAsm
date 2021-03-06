;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; String en base 10 to Int  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

%macro strlen 2
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  %1 --> Un pointeur vers la string  ;
	;  %2 --> Le registre de retour       ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	xor	rcx,rcx
	
	loop:
		push	%1
		mov	rax,[%1 + rcx]
		and	rax,255
		inc	rcx
		cmp	al,0
		pop	%1
		jnz	loop
	
	dec	rcx
	mov	%2,rcx

%endmacro

stringBase10ToInt:
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;  rax- -> Pointeur vers la string    ;
	;  rax --> Le registre de retour      ;
	;  Type de retour --> Un entier ou -1 ;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	push	rbp
	mov	rbp,rsp
	
	xor	rdx,rdx
	xor	rbx,rbx
	
	mov	rdi,rax
	
	strlen	rdi,rcx
	dec	rcx
	
	mov	rax,1
	
	loopNonZero:
		cmp	rcx,0
		jl	assign
		
		mov	dl,byte [rdi + rcx]
		sub	dl,'0'
		
		cmp	dl,10
		jge	badReturn
		cmp	dl,0
		jl	badReturn
		
		jmp	add
		
		badReturn:
			mov	rax,-1
			jmp 	end

	add:
		push	rax
		
		mul	rdx
		add	rbx,rax
		
		pop	rax
		mov	rdx,10
		mul	rdx
		
		dec	rcx
		jmp	loopNonZero
	
	assign:
		mov	rax,rbx

	end:
		nop
	leave
	ret
