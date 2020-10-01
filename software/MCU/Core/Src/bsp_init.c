/*
 * bsp_init.c
 *
 *  Created on: Sep 28, 2020
 *      Author: grzegorz
 */
#include <bsp_eeprom.h>
#include "bsp.h"
#include "scpi_def.h"
#include "stm32f7xx_hal_conf.h"
#include "main.h"
#include "bsp_init.h"

void BSP_InitStaticData()
{
	strncpy(default_board_static.structure.info.device, SCPI_IDN2, SCPI_DEVICE_STRING_LENGTH);
	strncpy(default_board_static.structure.info.manufacturer, SCPI_IDN1, SCPI_MANUFACTURER_STRING_LENGTH);
	strncpy(default_board_static.structure.info.serial_number, SCPI_IDN4, SCPI_SERIALNUMBER_STRING_LENGTH);
	strncpy(default_board_static.structure.info.software_version, SCPI_IDN3, SCPI_SOFTWAREVERSION_STRING_LENGTH);

	default_board_static.structure.ip4.MAC[0] = MAC_ADDR0;
	default_board_static.structure.ip4.MAC[1] = MAC_ADDR1;
	default_board_static.structure.ip4.MAC[2] = MAC_ADDR2;
	default_board_static.structure.ip4.MAC[3] = MAC_ADDR3;
	default_board_static.structure.ip4.MAC[4] = MAC_ADDR4;
	default_board_static.structure.ip4.MAC[5] = MAC_ADDR5;

	default_board_static.structure.ip4.gateway[0] = GATEWAY_ADDRESS_0;
	default_board_static.structure.ip4.gateway[1] = GATEWAY_ADDRESS_1;
	default_board_static.structure.ip4.gateway[2] = GATEWAY_ADDRESS_2;
	default_board_static.structure.ip4.gateway[3] = GATEWAY_ADDRESS_3;

	strncpy(default_board_static.structure.ip4.hostname, HOSTNAME, HOSTNAME_LENGTH);

	default_board_static.structure.ip4.address[0] = IP_ADDRESS_0;
	default_board_static.structure.ip4.address[1] = IP_ADDRESS_1;
	default_board_static.structure.ip4.address[2] = IP_ADDRESS_2;
	default_board_static.structure.ip4.address[3] = IP_ADDRESS_3;

	default_board_static.structure.ip4.netmask[0] = NETMASK_ADDRESS_0;
	default_board_static.structure.ip4.netmask[1] = NETMASK_ADDRESS_1;
	default_board_static.structure.ip4.netmask[2] = NETMASK_ADDRESS_2;
	default_board_static.structure.ip4.netmask[3] = NETMASK_ADDRESS_3;

	default_board_static.structure.ip4.port = TCPIP_DEFAULT_PORT;

	strncpy(default_board_static.structure.security.password, PASSWORD, PASSWORD_LENGTH);

	board_static = default_board_static;

}

void BSP_InitCurrentData()
{
	board_current.security_status = 1;

	board_current.temperature.unit = 1;

	board_current.trigger.delay = 1; // 1ms
	board_current.trigger.in_slope = POS; // Positive
	board_current.trigger.out_slope = POS; // Positive
	board_current.trigger.source = IMM; // Immediate

	board_current.dmm.function = dc_voltage;

	board_current.ip4 = board_static.structure.ip4;

}

BSP_StatusTypeDef BSP_Init()
{
	BSP_StatusTypeDef eeprom_status;

	if(MCU_DEFAULT_ON == HAL_GPIO_ReadPin(MCU_DEFAULT_GPIO_Port, MCU_DEFAULT_Pin))
	{
		BSP_InitStaticData();
		board_current.default_cfg = 1;
	}
	else
	{

		eeprom_status = EEPROM_Status();

		switch (eeprom_status)
		{
			case BSP_EEPROM_EMPTY: eeprom_status = EEPROM_Write(&default_board_static, STRUCT_SIZE);
			case BSP_OK: eeprom_status = EEPROM_Read(&board_static, STRUCT_SIZE); board_current.default_cfg = 0; break;
			default: BSP_InitStaticData(); break;
		}

	}

	BSP_InitCurrentData();

	return eeprom_status;
}
