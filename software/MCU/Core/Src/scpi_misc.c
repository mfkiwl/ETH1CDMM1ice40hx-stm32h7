/*
 * scpi_misc.c
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#include "scpi_misc.h"
#include "bsp.h"
#include "bsp_switch.h"

 scpi_choice_def_t route_input_relay_select[] =
 {
 		{"H",  0x02},
 		{"L",  0x04},
 		{"I",  0x08},
		{"LS", 0x10},
		{"HS", 0x20},
		{"ALL",0x3E},
 		SCPI_CHOICE_LIST_END
 };

const char* arr_str[5] = {"H", "L", "I", "LS", "HS"};

scpi_result_t SCPI_TestAllQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_Abort(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_FetchQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_InitiateImmediate(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_RQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_ReadQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_SampleCount(scpi_t * context)
{
	scpi_number_t param_samples;

	if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &param_samples, TRUE))
	{
		return SCPI_RES_ERR;
	}

	if(param_samples.special)
	{
		switch(param_samples.content.tag)
		{
		case SCPI_NUM_MIN: board_current.dmm.sample_count = 1; break;
		case SCPI_NUM_MAX: board_current.dmm.sample_count = 1000000; break;
		case SCPI_NUM_DEF: board_current.dmm.sample_count= 1; break;
		default: SCPI_ErrorPush(context, SCPI_ERROR_ILLEGAL_PARAMETER_VALUE); return SCPI_RES_ERR;
		}
	}
	else
	{
		if(SCPI_UNIT_NONE == param_samples.unit || SCPI_UNIT_UNITLESS == param_samples.unit)
		{
			if(param_samples.content.value < 0 || param_samples.content.value > 1000000)
			{
				SCPI_ErrorPush(context, SCPI_ERROR_DATA_OUT_OF_RANGE);
				return SCPI_RES_ERR;
			}
			else
			{
				board_current.dmm.sample_count = param_samples.content.value;
				return SCPI_RES_OK;
			}
		}
		else
		{
			SCPI_ErrorPush(context, SCPI_ERROR_INVALID_SUFFIX);
			return SCPI_RES_ERR;
		}
	}
	return SCPI_RES_OK;
}

scpi_result_t SCPI_SampleCountQ(scpi_t * context)
{
	SCPI_ResultUInt32(context, board_current.dmm.sample_count);
	return SCPI_RES_OK;
}

scpi_result_t SCPI_RouteOpen(scpi_t * context)
{
	int32_t param_relay;
	uint8_t param_tmp = 0;
	uint8_t index = 1;

	if(!SCPI_ParamChoice(context, route_input_relay_select, &param_relay, TRUE))
	{
		return SCPI_RES_ERR;
	}


	param_tmp =(uint8_t)(param_relay & 0xFF);

	for(uint8_t i = 0; i < 5; i++)
	{
		index = index << 1;
		if(param_tmp & index)
		{
			board_current.relay.status[i] = 0;
		}


	}

	SWITCH_ULN2003A_Control(param_relay, 0);

	return SCPI_RES_OK;
}

scpi_result_t SCPI_RouteOpenQ(scpi_t * context)
{
	for(uint8_t i = 0; i < 5; i++)
	{
		if(!board_current.relay.status[i])
		{
			SCPI_ResultCharacters(context, arr_str[i], strlen(arr_str[i]));
		}
	}

	return SCPI_RES_OK;
}

scpi_result_t SCPI_RouteClose(scpi_t * context)
{
	int32_t param_relay;
	uint8_t param_tmp = 0;
	uint8_t index = 1;

	if(!SCPI_ParamChoice(context, route_input_relay_select, &param_relay, TRUE))
	{
		return SCPI_RES_ERR;
	}

	param_tmp =(uint8_t)(param_relay & 0xFF);

	for(uint8_t i = 0; i < 5; i++)
	{
		index = index << 1;
		if(param_tmp & index)
		{
			board_current.relay.status[i] = 1;
		}

	}

	SWITCH_ULN2003A_Control(param_relay, 1);

	return SCPI_RES_OK;
}

scpi_result_t SCPI_RouteCloseQ(scpi_t * context)
{

	for(uint8_t i = 0; i < 5; i++)
	{
		if(board_current.relay.status[i])
		{
			SCPI_ResultCharacters(context, arr_str[i], strlen(arr_str[i]));
		}
	}

	return SCPI_RES_OK;
}
