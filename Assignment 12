;Author: Andrew Poitras
;Assignment 12 Ch4.10 #8

ExitProcess proto
.data
	array DWORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110
.code
main proc
	mov esi,OFFSET array
	mov ecx,SIZEOF array
	sub ecx,TYPE array
	mov eax,[esi + ecx]
	mov ecx,LENGTHOF array

L1:
	xchg eax, [esi]
	add esi, TYPE array
	loop L1

	call ExitProcess
main endp
end
