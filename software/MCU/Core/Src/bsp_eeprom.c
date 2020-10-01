/*
 * eeprom.c
 *
 *  Created on: Mar 15, 2020
 *      Author: grzegorz
 */
#include <bsp_ee24.h>
#include <bsp_eeprom.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "main.h"

extern I2C_HandleTypeDef hi2c4;



BSP_StatusTypeDef EEPROM_Reset()
{

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
	uint8_t tx_data = EEPROM_WRITE_DONE;

	if(ee24_isConnected())
	{
		if(ee24_write(0, union_data->bytes, size, 1000))
		{
			if(ee24_write(EEPROM_END, &tx_data, 1, 1000))
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
	uint8_t rx_data = 0;

	if(ee24_isConnected())
	{
		if(ee24_read(EEPROM_END, &rx_data, 1, 1000))
		{
			if(EEPROM_WRITE_DONE == rx_data)
			{
				return BSP_OK;
			}
			else
			{
				return BSP_EEPROM_EMPTY;
			}

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
