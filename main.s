; Plays a tune by CPE Bach
; Transcribed from Anthologie Classique no. 54 via imslp.org
; (https://imslp.org/wiki/File:PMLP06627-Bach_CPE_Solfeggio_220.pdf)
; Derived from PICDEM2+ Code written by Microchip Technology Inc. 2002	
list p=18f452
#include <xc.inc>

CONFIG	"OSC"	=   "ECIO"  
CONFIG	"OSCS"	=   "OFF"
CONFIG	"PWRT"	=   "ON"
CONFIG	"BOR"	=   "OFF"
CONFIG	"WDT"	=   "OFF"
CONFIG	"CCP2MUX"   =	"OFF"
CONFIG	"LVP"	=   "OFF"
CONFIG	"CP0"	=   "OFF"
CONFIG	"CPB"	=   "OFF"
CONFIG	"WRT0"	=   "OFF"
CONFIG	"WRTC"	=   "OFF"
CONFIG	"EBTR0"	=   "OFF"
CONFIG	"EBTRB"	=   "OFF"

#define C4	238
#define Db4	224
#define D4	212
#define Eb4	200
#define E4	189
#define F4	178
#define Gb4	167
#define G4	158
#define Ab4	149
#define A4	141
#define Bb4	133
#define B4	126
#define C5	119
#define Db5	112
#define D5	105
#define Eb5	99
#define E5	94
#define F5	88
#define Gb5	83
#define G5	79
#define Ab5	74
#define A5	70
#define Bb5	66
#define B5	62
#define C6	59
#define Db6	55
#define D6	52
#define Eb6	49
#define E6	46
#define F6	44
#define Gb6	41
#define G6	39
#define Ab6	37
#define A6	35
#define Bb6	33
#define B6	31
#define C7	29
#define Db7	27
#define D7	26
#define Eb7	24
#define E7	23
#define F7	21
#define Gb7	20
#define G7	19
#define Ab7	18
#define A7	17
#define Bb7	16
#define B7	15
#define EMPTY	0
#define ENDSONG	255

;variables	UDATA
PSECT udata
temp_1:		DS 1
temp_2:		DS 1


PSECT STARTUP,class=CODE,reloc=2
begin:
	NOP
	goto	start
	NOP
	NOP
	NOP

psect data
notes:	
	db  Eb4,C4,Eb4,G4,C5,Eb5,D5,C5,B4,G4,B4,D5,G5,F5,Eb5,D5
	db  Eb5,C5,Eb5,G5,C6,Eb6,D6,C6,D6,C6,B5,A5,G5,F5,Eb5,D5
	
	db  Eb5,C5,Eb5,G5,C6,Eb6,D6,C6,B5,G5,B5,D6,G6,F6,Eb6,D6
	db  Eb6,C6,Eb6,G6,C7,Eb7,D7,C7,D7,C7,B6,A6,G6,F6,Eb6,D6
	
	db  Eb6,C6,G5,Eb5,C5,C7,G6,Eb6,Ab6,F4,Ab4,C5,F5,Ab5,C6,Eb6
	db  D6,Bb5,F5,D5,Bb4,Bb6,F6,D6,G6,Eb4,G4,Bb4,Eb5,G5,Bb5,D6
	
	db  C6,A5,Ab5,A5,C6,A5,Ab5,A5,Eb6,C6,G5,A5,Eb6,C6,G5,A5
	db  D6,C6,Gb5,A5,A6,C6,Gb5,A5,Gb6,C6,D5,A5,C6,A5,Gb5,D5
    
	db  Bb5,G4,Bb4,D4,G4,Bb4,A4,G4,Gb4,D4,Gb4,A4,D5,C5,Bb4,A4
	db  Bb4,G4,Bb4,D5,G5,Bb5,A5,G5,A5,G5,Gb5,E5,D5,C5,Bb4,A4
    
	db  Bb4,G4,Bb4,D5,G5,Bb5,A5,G5,Gb5,D5,Gb5,A5,D6,C6,Bb5,A5
	db  Bb5,G5,Bb5,D6,G6,Bb6,A6,G6,A6,G6,Gb6,E6,D6,C6,Bb5,A5
	
	db  Bb5,G5,Bb5,D6,G6,D6,Bb5,G5,F4,G6,D6,B5,G5,B5,D6,G6
	db  C5,G4,G5,G4,C5,G4,G5,G4,B4,G4,F5,G4,B4,G4,F5,G4
    
	db  Eb6,C6,Eb6,G6,C7,G6,Eb6,C6,Bb4,C7,G6,E6,C6,E6,G6,C7
	db  F5,C5,C6,C5,F5,C5,C6,C5,E5,C5,Bb5,C5,E5,C5,Bb5,C5
    
	db  Ab5,F4,Ab4,C5,F4,Ab4,G4,F4,E4,C4,E4,G4,C5,Bb4,Ab4,G4
	db  Ab4,F4,Ab4,C5,F5,Ab5,G5,F5,G5,F5,E5,D5,C5,Bb4,Ab4,G4
	
	db  Ab4,F4,Ab4,C5,F5,Ab5,G5,F5,E5,C5,E5,G5,C6,Bb5,Ab5,G5
	db  Ab5,F5,Ab5,C6,F6,Ab6,G6,F6,G6,F6,E6,D6,C6,Bb5,Ab5,G5
	
	db  Ab5,F6,C6,Ab5,F5,C6,Ab5,F5,C5,Ab5,F5,C5,Ab4,F5,C5,Ab4
	db  Db4,Db4,Db4,Db4,Db4,Db4,Db4,Db4,Ab6,F6,E6,F6,G6,F6,E6,F6
	
	db  C4,C4,C4,C4,C4,C4,C4,C4,Ab5,F5,E5,F5,G5,F5,E5,F5
	db  B4,B4,B4,B4,B4,B4,B4,B4,D7,F6,G6,Ab6,G6,F6,Eb6,D6
	
	db  Eb6,G6,C7,G6,Bb6,Ab6,G6,F6,Eb6,Eb6,Eb6,Eb6,D6,Eb6,D6,Eb6
	
	db  C5,G4,G5,G4,C5,G4,G5,G4,B4,G4,F5,G4,B4,G4,F5,G4
	db  Bb4,G4,E5,G4,Bb4,G4,E5,G4,A4,Eb5,C6,Eb5,A4,Eb5,C6,Eb5
	
	db  Ab4,F4,D5,F4,Ab4,F4,D5,F4,G4,Db5,Bb5,Db5,G4,Db5,Bb5,Db5
	db  Gb4,Eb4,C5,Eb4,Gb4,Eb4,C5,Eb4,Gb4,C5,C6,C5,Gb4,C5,C6,C5
	
	db  G4,C5,Eb5,G5,C6,G5,Eb5,C5,G5,Eb5,C5,G4,F5,D5,B4,F4
	
	db  Eb4,C4,Eb4,G4,C5,Eb5,D5,C5,B4,G4,B4,D5,G5,F5,Eb5,D5
	db  Eb5,C5,Eb5,G5,C6,Eb6,D6,C6,D6,C6,B5,A5,G5,F5,Eb5,D5
	
	db  Eb5,C5,Eb5,G5,C6,Eb6,D6,C6,B5,G5,B5,D6,G6,F6,Eb6,D6
	db  Eb6,C6,Eb6,G6,C7,Eb7,D7,B6,C7,G6,Eb6,D6,C6,G5,Eb5,D5
	db  C5,C5,C5,C5
	
	db  ENDSONG

psect code
start:	
	

	bcf	TRISC2			;configure CCP1 module for buzzer
	movlw	0x80
	movwf	PR2,a			;initialize PWM period 
	movlw	0x80			;initialize PWM duty cycle
	movwf	CCPR1L,a
	bcf	CCP1X
	bcf	CCP1Y
	
	movlw	0x06			;postscale 1:1, prescaler 16, Timer2 ON
	movwf	T2CON,a
		
	
	bcf	TRISB0
	bcf	TRISB1
	bcf	TRISB2
	bcf	TRISB3
	
	
	call	play_notes
	movlw	0x00
	movwf	CCP1CON,a
	clrf	PORTB,a
	setf	TRISB,a
loop:
	goto	loop
	
play_notes:
	bsf	RB0
	bcf	RB1
	bsf	RB2
	bcf	RB3
	movlw	0x0F			;turn buzzer on	
	movwf	CCP1CON,a	
	
	movlw	low highword notes
	movwf	TBLPTRU,a
	movlw	high notes
	movwf	TBLPTRH,a
	movlw	low notes
	movwf	TBLPTRL,a
	

play_next_note:
	tblrd*+
	
	movlw	ENDSONG	; 255 means end of song
	cpfseq	TABLAT,a
	goto	not_end
	return
	
not_end:
	movf	TABLAT,W,a

	movwf	PR2,a	; Set timer period based on note value
	    
	bcf	CARRY	; Set PWM duty to half the timer rate (always 50%)
	rrcf	PR2,W,a	; divide by 2
	movwf	CCPR1L,a
	
	;flash LEDs
	movlw	0xf
	xorwf	PORTB,F,a
	    
	call	delay_100ms

	goto	play_next_note

;------------------ 100ms Delay --------------------------------
delay_100ms:
	movlw	0xFF
	movwf	temp_1,b
	movlw	0x83
	movwf	temp_2,b

d100l1:
	decfsz	temp_1,F,b
	bra	d100l1
	decfsz	temp_2,F,b
	bra	d100l1
	return


end begin	
