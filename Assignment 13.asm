;Author: Andrew Poitras
;Assignment 13 Bubble Sort

ExitProcess proto
PrintArray proto
WriteInt64 proto
Crlf proto
Sort proto
.data
	array QWORD 2645, 365, 985, 709, 287, 62748, 4896489, 65498, 4948, 15449876
.code
main proc
	call PrintArray
	call Sort
	call Crlf
	call PrintArray
	call ExitProcess
main endp

PrintArray proc uses rsi rcx rax
	mov rsi,OFFSET array
	mov rcx,LENGTHOF array

L1:
	mov rax,[rsi]
	call WriteInt64
	call Crlf
	add rsi,TYPE array
	loop L1

	ret
PrintArray endp

Sort proc uses rsi rcx rax
	mov rcx,LENGTHOF array
L1:
	push rcx
	mov rsi,OFFSET array
	mov rcx,LENGTHOF array
	sub rcx,1
	L2:
		mov rax,[rsi]
		cmp rax,[rsi+TYPE array]
		jc @A
		xchg rax,[rsi+TYPE array]
		xchg rax,[rsi]
	@A:	
		add rsi,TYPE array
		loop L2
	pop rcx
	loop L1

	ret
Sort endp

end
