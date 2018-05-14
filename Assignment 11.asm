;Author: Andrew Poitras
;Assignment 11 Ch4.10 #2

ExitProcess proto
.data
	array BYTE 10h, 20h, 30h, 40h, 50h, 60h, 70h, 80h
.code
main proc
	mov esi, OFFSET array
	mov edx,0
	mov ecx,2
	mov eax,LENGTHOF array
	div ecx
	mov ecx,eax
	mov eax,TYPE array
	mov ebx,2
	mul ebx

L1:
	mov al,[esi]
	xchg al,[esi + 1]
	mov [esi],al
	add esi,ebx
	loop L1
  call ExitProcess
main endp
end
