#define _VOLDATA volatile __data
#define _VOLXDATA volatile __xdata
#define _UINT8 unsigned char

_VOLDATA   _UINT8 __at 0x00 PTA;
_VOLDATA   _UINT8 __at 0x01 PTB;
_VOLDATA   _UINT8 __at 0x02 PTC;
_VOLXDATA  _UINT8 __at 0x3004 SYS_SOPT1;
_VOLXDATA  _UINT8 __at 0x30B0 PTAOE;
_VOLXDATA  _UINT8 __at 0x30B1 PTBOE;
_VOLXDATA  _UINT8 __at 0x30B2 PTCOE;
_VOLXDATA  _UINT8 __at 0x30B8 PTAIE;
_VOLXDATA  _UINT8 __at 0x30B9 PTBIE;
_VOLXDATA  _UINT8 __at 0x30BA PTCIE;
_VOLXDATA  _UINT8 __at 0x3030 WDOG_CS1;
_VOLXDATA  _UINT8 __at 0x3031 WDOG_CS2;
_VOLXDATA  _UINT8 __at 0x3032 WDOG_CNTH;
_VOLXDATA  _UINT8 __at 0x3033 WDOG_CNTL;
_VOLXDATA  _UINT8 __at 0x3034 WDOG_TOVALH;
_VOLXDATA  _UINT8 __at 0x3035 WDOG_TOVALL;
_VOLXDATA  _UINT8 __at 0x303E ICS_OSCSC;
_VOLXDATA  _UINT8 __at 0x3038 ICS_C1;
_VOLXDATA  _UINT8 __at 0x3039 ICS_C2;
_VOLXDATA  _UINT8 __at 0x3080 SCI0_BDH;
_VOLXDATA  _UINT8 __at 0x3081 SCI0_BDL;
_VOLXDATA  _UINT8 __at 0x3082 SCI0_C1;
_VOLXDATA  _UINT8 __at 0x3083 SCI0_C2;
_VOLXDATA  _UINT8 __at 0x3084 SCI0_S1;
_VOLXDATA  _UINT8 __at 0x3085 SCI0_S2;
_VOLXDATA  _UINT8 __at 0x3086 SCI0_C3;
_VOLXDATA  _UINT8 __at 0x3087 SCI0_D;

#define BS(number,bit) (number|=(1<<bit))		
#define BC(number,bit) (number&=(~(1<<bit)))
#define BT(number,bit) (number ^=(1<<bit))
#define BV(number,bit) (number &(1<<bit))

#define DOE_P   PTC
#define DOE_D   PTCOE
#define DOE_B   2

#define DLE_D   PTCOE
#define DLE_P   PTC
#define DLE_B   3

#define DCK_D   PTBOE
#define DCK_P   PTB
#define DCK_B   4

#define DDI_D   PTBOE
#define DDI_P   PTB
#define DDI_B   5

typedef union
{
struct
 {
    unsigned k1:1;
    unsigned k2:1;
    unsigned k3:1;
    unsigned k4:1;
    unsigned k5:1;
    unsigned k6:1;
    unsigned k7:1;
 	unsigned k8:1;
 };
unsigned char CHAR;
}key_var;

#define		KEY_1_P		PTC
#define		KEY_1_E		PTCIE
#define		KEY_1_B		1
#define		KEY_2_P		PTC
#define		KEY_2_E		PTCIE
#define		KEY_2_B		0
#define		KEY_3_P		PTB
#define		KEY_3_E		PTBIE
#define		KEY_3_B		3
#define		KEY_4_P		PTB
#define		KEY_4_E		PTBIE
#define		KEY_4_B		2
#define		KEY_5_P		PTB
#define		KEY_5_E		PTBIE
#define		KEY_5_B		1


void dly_1ms (void);
void dly_ms (unsigned int howmuch);
void sr_shiftout (unsigned char data);
void sr_array (unsigned char * data);
void sr_array_dec (unsigned char * data, unsigned char minus, unsigned char dp_mask);
void uart_send_b (unsigned char data);

const unsigned char disp_numbers[16] = 
{0b00111111,0b00000110,
0b01011011,0b01001111,
0b01100110,0b01101101,
0b01111101,0b00000111,
0b01111111,0b01101111,
0b00110111,0b00000000,
0b01000000,0b00000000,
0b01111001,0b01010000,
};

key_var keys, keys_new,keys_old;
volatile unsigned int cnt;
/*
137Hz
274Hz
344Hz

*/

char rcvd_str[20],rcvd_ptr;
volatile char rcvd_flag;
//1 - fffc, 2-fffa
void timer_isr (void) __interrupt (24)
{
	unsigned char temp;
    temp = SCI0_S1;
    temp = SCI0_D;
	   if (temp<0x20)
			{
			if (rcvd_ptr>0)
				{
				rcvd_str[rcvd_ptr] = 0;
				rcvd_flag = 1;
				rcvd_ptr = 0;
				}
			}
		else
			{
			rcvd_str[rcvd_ptr++] = temp;
			}
		if (rcvd_ptr==sizeof(rcvd_str)) rcvd_ptr = 0;
}

volatile unsigned char tmp;
unsigned char i,sign,point;
int main(void) 
	{
    WDOG_TOVALL = 0x00;
    WDOG_TOVALH = 0x10;
    WDOG_CS2 = 0x01;
    WDOG_CS1 = 0x20;

    ICS_OSCSC = 0x96;
    while ((ICS_OSCSC&0x01)==0);
    ICS_C1 = 0x10;
    ICS_C2 = 0x00;

	BS(PTAIE,2);
    BS(PTAOE,1);

  __asm
    cli
  __endasm;

	BS(SYS_SOPT1,7);
	SCI0_BDH = 0;
	SCI0_BDL = 33;
	SCI0_C2 = 0x2C;
	

    BS(DOE_D,DOE_B);
    BS(DLE_D,DLE_B);
    BS(DCK_D,DCK_B);
    BS(DDI_D,DDI_B);
	BS(KEY_1_E,KEY_1_B);
	BS(KEY_2_E,KEY_2_B);
	BS(KEY_3_E,KEY_3_B);
	BS(KEY_4_E,KEY_4_B);
	BS(KEY_5_E,KEY_5_B);


    BC(DOE_P,DOE_B);    
	while (1)
		{
		keys_new.CHAR = 0;
        if (BV(KEY_1_P,KEY_1_B))  keys_new.k1 = 1;
        if (BV(KEY_2_P,KEY_2_B))  keys_new.k2 = 1;
        if (BV(KEY_3_P,KEY_3_B))  keys_new.k3 = 1;
        if (BV(KEY_4_P,KEY_4_B))  keys_new.k4 = 1;
        if (BV(KEY_5_P,KEY_5_B))  keys_new.k5 = 1;      
		keys_new.CHAR =  ~keys_new.CHAR;
		keys_new.CHAR = keys_new.CHAR & 0x1F;
		if (rcvd_flag)
			{
			rcvd_flag = 0;
			uart_send_b(0x20+keys_new.CHAR);
			uart_send_b(0x0A);
			BT(PTA,1);				
			}
        dly_ms(10);
		sign = 0;
		if (rcvd_str[0]=='#')
			{
			if (rcvd_str[1]&0x01) sign = 1;
			point = (1<<(rcvd_str[2]&0x07));
			sr_array_dec(rcvd_str+3,sign,point);
			}
//		sr_array_dec("1234567",0,0x20);
		}
	}

void uart_send_b (unsigned char data)
	{
	while ((SCI0_S1&0x80)==0);
	SCI0_D = data;
	}


void dly_ms (unsigned int howmuch)
{
unsigned int i;
for (i=0;i<howmuch;i++) dly_1ms();
}

void dly_1ms (void)
{
volatile unsigned int i;
for (i=0;i<700;i++);
}

void sr_array_dec (unsigned char * data, unsigned char minus, unsigned char dp_mask)
	{
	unsigned char i,result;
	unsigned char arr_tmp[8];
	result = 0;
	if (minus) result=result|0x04;
	else result=result|0x08;
	if (data[0]=='1') result=result|0x03;
	arr_tmp[7] = result;
	for (i=1;i<8;i++)
		{
		if ( (data[i]>='0') & (data[i]<('9'+1)) )
			result = disp_numbers[data[i]&0x0F];
		else result = 0;
		dp_mask = dp_mask << 1;
		if (dp_mask&0x80) result=result|0x80;
		arr_tmp[7-i] = result;
		}
		for (i=0;i<8;i++) sr_shiftout(arr_tmp[i]);
        BS(DLE_P,DLE_B);
        BC(DLE_P,DLE_B);		
	}

void sr_array (unsigned char * data)
	{
	unsigned char i;
		for (i=0;i<8;i++) sr_shiftout(data[i]);
        BS(DLE_P,DLE_B);
        BC(DLE_P,DLE_B);		
	}


void sr_shiftout (unsigned char data)
    {
    unsigned char i;
    for (i=0;i<8;i++)
        {
        if (data&0x80)
            BS(DDI_P,DDI_B);
        else
            BC(DDI_P,DDI_B);
        BS(DCK_P,DCK_B);
        data = data<<1;
        BC(DCK_P,DCK_B);
        }
    }

