;Auteur --> aiglematth

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Taille d'une string    ;
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
