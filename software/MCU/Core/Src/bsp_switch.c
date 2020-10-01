/*
 * bsp_switch.c
 *
 *  Created on: Sep 10, 2020
 *      Author: grzegorz
 */

#include "bsp_switch.h"

void SWITCH_ULN2003A_Control(uint8_t relay, uint8_t state)
{
	uint8_t select = 0, shift = 0x01;

	for(uint8_t i = 0; i < HE3621_REL_COUNT; i++)
	{
		shift = shift << 1;
		select = relay & shift;

		switch(select)
		{
			case CXN_REL1:	HAL_GPIO_WritePin(CXN_REL1_GPIO_Port, CXN_REL1_Pin, state); break;
			case CXN_REL2:	HAL_GPIO_WritePin(CXN_REL2_GPIO_Port, CXN_REL2_Pin, state); break;
			case CXN_REL3:	HAL_GPIO_WritePin(CXN_REL3_GPIO_Port, CXN_REL3_Pin, state); break;
			case CXN_REL4:	HAL_GPIO_WritePin(CXN_REL4_GPIO_Port, CXN_REL4_Pin, state); break;
			case CXN_REL5:	HAL_GPIO_WritePin(CXN_REL5_GPIO_Port, CXN_REL5_Pin, state); break;
		}


	}
}

void SWITCH_ULN2003A_ClearAll()
{
	HAL_GPIO_WritePin(CXN_REL1_GPIO_Port, CXN_REL1_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(CXN_REL2_GPIO_Port, CXN_REL2_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(CXN_REL3_GPIO_Port, CXN_REL3_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(CXN_REL4_GPIO_Port, CXN_REL4_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(CXN_REL5_GPIO_Port, CXN_REL5_Pin, SWITCH_OFF);
}

BSP_StatusTypeDef SWITCH_MCZ33996_Control(uint8_t relay, uint8_t state)
{
	return BSP_OK;
}

void SWITCH_MCZ33996_ClearAll()
{

}

void SWITCH_DG419_Control(uint8_t gain_circuit)
{
	HAL_GPIO_WritePin(AMPL_SEL_GPIO_Port, AMPL_SEL_Pin , gain_circuit);
}

void SWITCH_9012_Control(uint8_t select_10meg_load)
{
	HAL_GPIO_WritePin(DC_AMP_10MEG_GPIO_Port, DC_AMP_10MEG_Pin , select_10meg_load);
}

void SWITCH_TMUX6104_Control(uint8_t select_mux, uint8_t select_gain)
{
	if(TMUX6104_MUX1 == select_mux)
	{
		HAL_GPIO_WritePin(DC_AMP1_MUX_EN_GPIO_Port, DC_AMP1_MUX_EN_Pin, SWITCH_ON);
		HAL_GPIO_WritePin(DC_AMP2_MUX_EN_GPIO_Port, DC_AMP2_MUX_EN_Pin, SWITCH_OFF);

		switch(select_gain)
		{
			case GAIN_1:{	HAL_GPIO_WritePin(DC_AMP1_MUX_A0_GPIO_Port, DC_AMP1_MUX_A0_Pin, SWITCH_ON);
							HAL_GPIO_WritePin(DC_AMP1_MUX_A1_GPIO_Port, DC_AMP1_MUX_A1_Pin, SWITCH_OFF);
						}; break;
			case GAIN_10:{	HAL_GPIO_WritePin(DC_AMP1_MUX_A0_GPIO_Port, DC_AMP1_MUX_A0_Pin, SWITCH_OFF);
							HAL_GPIO_WritePin(DC_AMP1_MUX_A1_GPIO_Port, DC_AMP1_MUX_A1_Pin, SWITCH_ON);
						}; break;
			case GAIN_100:{	HAL_GPIO_WritePin(DC_AMP1_MUX_A0_GPIO_Port, DC_AMP1_MUX_A0_Pin, SWITCH_ON);
							HAL_GPIO_WritePin(DC_AMP1_MUX_A1_GPIO_Port, DC_AMP1_MUX_A1_Pin, SWITCH_ON);
						}; break;
			default:;
		}
	}
	else if(TMUX6104_MUX2 == select_mux)
	{
		HAL_GPIO_WritePin(DC_AMP1_MUX_EN_GPIO_Port, DC_AMP1_MUX_EN_Pin, SWITCH_OFF);
		HAL_GPIO_WritePin(DC_AMP2_MUX_EN_GPIO_Port, DC_AMP2_MUX_EN_Pin, SWITCH_ON);

		switch(select_gain)
		{
			case GAIN_1:{	HAL_GPIO_WritePin(DC_AMP2_MUX_A0_GPIO_Port, DC_AMP2_MUX_A0_Pin, SWITCH_ON);
							HAL_GPIO_WritePin(DC_AMP2_MUX_A1_GPIO_Port, DC_AMP2_MUX_A1_Pin, SWITCH_OFF);
						}; break;
			case GAIN_10:{	HAL_GPIO_WritePin(DC_AMP2_MUX_A0_GPIO_Port, DC_AMP2_MUX_A0_Pin, SWITCH_OFF);
							HAL_GPIO_WritePin(DC_AMP2_MUX_A1_GPIO_Port, DC_AMP2_MUX_A1_Pin, SWITCH_ON);
						}; break;
			case GAIN_100:{	HAL_GPIO_WritePin(DC_AMP2_MUX_A0_GPIO_Port, DC_AMP2_MUX_A0_Pin, SWITCH_ON);
							HAL_GPIO_WritePin(DC_AMP2_MUX_A1_GPIO_Port, DC_AMP2_MUX_A1_Pin, SWITCH_ON);
						}; break;
			default:;
		}
	}
}

void SWITCH_TMUX6104_ClearAll()
{
	HAL_GPIO_WritePin(DC_AMP1_MUX_EN_GPIO_Port, DC_AMP1_MUX_EN_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(DC_AMP1_MUX_A0_GPIO_Port, DC_AMP1_MUX_A0_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(DC_AMP1_MUX_A1_GPIO_Port, DC_AMP1_MUX_A1_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(DC_AMP2_MUX_EN_GPIO_Port, DC_AMP2_MUX_EN_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(DC_AMP2_MUX_A0_GPIO_Port, DC_AMP2_MUX_A0_Pin, SWITCH_OFF);
	HAL_GPIO_WritePin(DC_AMP2_MUX_A1_GPIO_Port, DC_AMP2_MUX_A1_Pin, SWITCH_OFF);
}

void SWITCH_SelectDMMFunction(uint8_t dmm_function)
{

}
