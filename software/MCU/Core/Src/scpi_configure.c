/*
 * scpi_configure.c
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#include "scpi_configure.h"
#include "bsp_switch.h"

scpi_result_t SCPI_ConfigureQ(scpi_t * context)
{
	return SCPI_RES_OK;
}


scpi_result_t SCPI_ConfigureCurrentDC(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_ConfigureResistance(scpi_t * context)
{
	return SCPI_RES_OK;
}


/* CONFigure:VOLTage[:DC][{<range>|MIN|MAX|DEF} [,{<resolution>|MIN|MAX|DEF}]]
*/

scpi_result_t SCPI_ConfigureVoltageDC(scpi_t * context)
{
	scpi_number_t param_range;
	float valid_ranges[4] = {0.1, 1, 10, 100};
	uint8_t gain[] = {100, 10, 1, 10};
	uint8_t is_valid = 0;
	uint16_t switch_path = 0;

	if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &param_range, TRUE))
	{
		return SCPI_RES_ERR;
	}

	if(param_range.special)
	{
		switch(param_range.content.tag)
		{
		case SCPI_NUM_MIN: board_current.dmm.range = 0.1; break;
		case SCPI_NUM_MAX: board_current.dmm.range = 100; break;
		case SCPI_NUM_DEF: board_current.dmm.range = 100; break;
		default: SCPI_ErrorPush(context, SCPI_ERROR_ILLEGAL_PARAMETER_VALUE); return SCPI_RES_ERR;
		}
	}
	else
	{
		if((SCPI_UNIT_VOLT == param_range.unit) && (SCPI_UNIT_NONE == param_range.unit))
		{
			for(uint8_t i = 0; i < 4; i++)
			{
				if(valid_ranges[i] == param_range.content.value)
				{
					is_valid = 1;
					board_current.dmm.gain = gain[i];
					(valid_ranges[i] > 10) ? (switch_path = XH_RLY | DCV_H_CTR | MC_CTR) : (switch_path = L_RLY | DCV_L_CTR | MC_CTR);
					break;
				}
				else
				{
					is_valid = 0;
				}
			}
			if(is_valid)
			{
				board_current.dmm.function = dc_voltage;
				board_current.dmm.range = param_range.content.value;
				board_current.dmm.switch_path = switch_path;
			}
			else
			{
				SCPI_ErrorPush(context, SCPI_ERROR_DATA_OUT_OF_RANGE);
				return SCPI_RES_ERR;
			}
		}
		else
		{
			SCPI_ErrorPush(context, SCPI_ERROR_INVALID_SUFFIX);
			return SCPI_RES_ERR;
		}
	}

	SWITCH_SelectFunction(board_current.dmm.function, board_current.dmm.switch_path, board_current.dmm.gain);

	return SCPI_RES_OK;
}
