	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=SRC
	MOV R6, #10
	LDR R4, #1
st
	STR R4,[R0]
	ADD R4, #1
	ADD R0, #4
	SUBS R6, #1
	BNE st
	MOV R1,R0
	LDR R0,=SRC
	LDR R6,#5
	
loop
	MOV R7,R0
	MOV R0,R1
	MOV R1,R7
	
STOP
	B STOP
	AREA mysrcdata, DATA, READWRITE
SRC DCD 0,1,2,3,4,5,6,7,8,9
	AREA mydata, DATA, READWRITE
DST DCD 0
	END