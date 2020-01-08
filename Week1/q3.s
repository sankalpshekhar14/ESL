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
	LDR R5,=10
	LDR R6,=12
	LDR R0,=SRC
	STR R5,[R0]
	ADD R0, #4
	STR R6,[R0]
STOP
	B STOP
	AREA mysrcdata, DATA, READWRITE
SRC DCD 8
	AREA mydata, DATA, READWRITE
DST DCD 0
	END