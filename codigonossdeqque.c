void configurar(){
	ADCON0 = 0x02;
	ADCON1 = 0X0E;
	ADCON2 = 0X80;
	INTCON = 0XC0;
	PIR1 = 0X0;
	PIE1 = 0X00;
	IPR1 = 0X40;
	ADRESH = 0;
	ADRESL = 0;
	TRISA = 1;
	TRISB = 0;
	TRISD = 0;
	PORTA = 0;
	PORTB = 0;
	PORTD = 0;
	ADON = 1;

}
void interrupt(){
	ADON =0;
	ADIF =0;
}
void main(){
	configurar();
	do{
		PORTD = ADRESL;
		PORTB = ADRESH;

	}while(1);
}