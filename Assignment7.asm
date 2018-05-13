;Author: Andrew Poitras
;Assignment 7 6.11.2 #5 & 6  Boolean Calculator

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
WriteString proto
Crlf proto
ReadString proto
WriteHex proto
ReadHex proto
xANDy proto
xORy proto
NOTx proto
xXORy proto
.data
buffer BYTE 'Q',0
char BYTE ?
hexVal DWORD ?
CaseTable BYTE '1'
		  QWORD Process_1
EntrySize = ($ - CaseTable)
		  BYTE '2'
		  QWORD Process_2
		  BYTE '3'
		  QWORD Process_3
		  BYTE '4'
		  QWORD Process_4
		  BYTE '5'
		  QWORD Process_5
NumberOfEntries = ($ - CaseTable) / EntrySize
prompt1 BYTE "Select a choice:",0
prompt2 BYTE "1. x AND y",0
prompt3 BYTE "2. x OR y",0
prompt4 BYTE "3. NOT x",0
prompt5 BYTE "4. x XOR y",0
prompt6 BYTE "5. Exit Program",0
prompt7 BYTE "Enter a hexidecimal x value:",0
prompt8 BYTE "Enter a hexidecimal y value:",0

msg1 BYTE "x AND y",0
msg2 BYTE "x OR y",0
msg3 BYTE "NOT x",0
msg4 BYTE "x XOR y",0
msg5 BYTE "Bye.",0

.code
main proc
	mov edx,OFFSET prompt1
	call WriteString
	call Crlf
	mov edx,OFFSET prompt2
	call WriteString
	call Crlf
	mov edx,OFFSET prompt3
	call WriteString
	call Crlf
	mov edx,OFFSET prompt4
	call WriteString
	call Crlf
	mov edx,OFFSET prompt5
	call WriteString
	call Crlf
	mov edx,OFFSET prompt6
	call WriteString
	call Crlf
	mov edx, OFFSET buffer
	mov ecx,2
	call ReadString

	mov ebx,OFFSET CaseTable
	mov ecx,NumberOfEntries
L1:
	movzx esi, BYTE PTR [buffer]
	movzx edi, BYTE PTR [ebx]
	cmp esi,edi
	jne L2
	call Near PTR [ebx + 1]
	;call WriteString
	;call Crlf
L2:
	add ebx,EntrySize
	loop L1
	invoke ExitProcess,0
main endp

Process_1 PROC
	mov edx,OFFSET msg1
	call WriteString
	call Crlf
	call xANDy
	ret
Process_1 ENDP

Process_2 PROC
	mov edx,OFFSET msg2
	call WriteString
	call Crlf
	call xORy
	ret
Process_2 ENDP

Process_3 PROC
	mov edx,OFFSET msg3
	call WriteString
	call Crlf
	call NOTx
	ret
Process_3 ENDP

Process_4 PROC
	mov edx,OFFSET msg4
	call WriteString
	call Crlf
	call xXORy
	ret
Process_4 ENDP

Process_5 PROC
	mov edx,OFFSET msg5
	call WriteString
	call Crlf
	ret
Process_5 ENDP

xANDy PROC uses eax edx
	mov edx,OFFSET prompt7
	call WriteString
	call Crlf
	call ReadHex
	mov hexVal,eax
	mov edx,OFFSET prompt8
	call WriteString
	call Crlf
	call ReadHex
	and hexVal,eax
	mov eax,hexVal
	call WriteHex
	ret
xANDy ENDP

xORy PROC
	mov edx,OFFSET prompt7
	call WriteString
	call Crlf
	call ReadHex
	mov hexVal,eax
	mov edx,OFFSET prompt8
	call WriteString
	call Crlf
	call ReadHex
	or hexVal,eax
	mov eax,hexVal
	call WriteHex
	ret
xORy ENDP

NOTx PROC
	mov edx,OFFSET prompt7
	call WriteString
	call Crlf
	call ReadHex
	mov hexVal,eax
	not hexVal
	mov eax,hexVal
	call WriteHex
	ret
NOTx ENDP

xXORy PROC
	mov edx,OFFSET prompt7
	call WriteString
	call Crlf
	call ReadHex
	mov hexVal,eax
	mov edx,OFFSET prompt8
	call WriteString
	call Crlf
	call ReadHex
	xor hexVal,eax
	mov eax,hexVal
	call WriteHex
	ret
xXORy ENDP

end main
