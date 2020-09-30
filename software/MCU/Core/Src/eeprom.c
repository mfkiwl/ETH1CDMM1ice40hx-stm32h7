/*
 * eeprom.c
 *
 *  Created on: Mar 15, 2020
 *      Author: grzegorz
 */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "eeprom.h"
#include "main.h"
#include "ee24.h"

extern I2C_HandleTypeDef hi2c4;



BSP_StatusTypeDef EEPROM_Reset()
{
	uint8_t ee24_stat;
	if(ee24_isConnected())
	{
		if(ee24_eraseChip())
		{
			return BSP_OK;
		}
		else
		{
			return BSP_EEPROM_WRITE_ERROR;
		}
	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}


}

BSP_StatusTypeDef EEPROM_Write(union bsp_data *union_data, size_t size)
{
	uint8_t ee24_stat;
	if(ee24_isConnected())
	{
		if(ee24_write(0, union_data->bytes, size, 1000))
		{
			return BSP_OK;
		}
		else
		{
			return BSP_EEPROM_WRITE_ERROR;
		}

	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}
}

BSP_StatusTypeDef EEPROM_Read(union bsp_data *union_data, size_t size)
{
	uint8_t ee24_stat;
	if(ee24_isConnected())
	{
		if(ee24_read(0, union_data->bytes, size, 1000))
		{
			return BSP_OK;
		}
		else
		{
			return BSP_EEPROM_READ_ERROR;
		}

	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}
}

BSP_StatusTypeDef EEPROM_Status()
{

}
