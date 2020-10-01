/*
 * bsp_switch.h
 *
 *  Created on: Sep 10, 2020
 *      Author: grzegorz
 */

#ifndef INC_BSP_SWITCH_H_
#define INC_BSP_SWITCH_H_

#include "bsp.h"
#include "main.h"

#define U1011 1
#define U1006 2

#define CXN_REL1 0x01
#define CXN_REL2 0x02
#define CXN_REL3 0x04
#define CXN_REL4 0x08
#define CXN_REL5 0x10

#define DCV_L_CTR	1
#define VZERO_CTR	2
#define R4W_LO_CTR	3
#define MZ_CTR		4
#define DCV_H_CTR	5
#define MC_CTR		6
#define AMPS_CTR	7
#define R4W_HI_CTR	8
#define DCV_A_CTR	9
#define L_RLY		10
#define XH_RLY		11
#define XO_A_RLY 	12

#define GAIN_CIRCUIT1 0
#define GAIN_CIRCUIT2 1

#define LOAD_10MEG_OFF 0
#define LOAD_10MEG_ON 1

#define TMUX6104_MUX1 1
#define TMUX6104_MUX2 2

#define GAIN_1		1
#define GAIN_10		2
#define GAIN_100	3

#define SWITCH_OFF		0
#define SWITCH_ON		1

#define HE3621_REL_COUNT 5

void SWITCH_ULN2003A_Control(uint8_t relay, uint8_t state);
void SWITCH_ULN2003A_ClearAll();

BSP_StatusTypeDef SWITCH_MCZ33996_Control(uint8_t relay, uint8_t state);
void SWITCH_MCZ33996_ClearAll();

void SWITCH_DG419_Control(uint8_t gain_circuit);
void SWITCH_9012_Control(uint8_t select_10meg_load);

void SWITCH_TMUX6104_Control(uint8_t select_mux, uint8_t select_gain);
void SWITCH_TMUX6104_ClearAll();

#endif /* INC_BSP_SWITCH_H_ */
