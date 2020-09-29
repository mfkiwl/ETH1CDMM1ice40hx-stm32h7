/*
 * bsp_init.c
 *
 *  Created on: Sep 28, 2020
 *      Author: grzegorz
 */
#include "bsp.h"
#include "scpi_def.h"
#include "stm32f7xx_hal_conf.h"
#include "main.h"
#include "bsp_init.h"

void BSP_Default()
{
	strncpy(default_board_static.structure.info.device, SCPI_IDN2, SCPI_DEVICE_STRING_LENGTH);
	strncpy(default_board_static.structure.info.manufacturer, SCPI_IDN1, SCPI_MANUFACTURER_STRING_LENGTH);
	strncpy(default_board_static.structure.info.serial_number, SCPI_IDN4, SCPI_SERIALNUMBER_STRING_LENGTH);
	strncpy(default_board_static.structure.info.software_version, SCPI_IDN3, SCPI_SOFTWAREVERSION_STRING_LENGTH);

	default_board_static.structure.ip4.MAC[0] = board_current.ip4.MAC[0] = MAC_ADDR0;
	default_board_static.structure.ip4.MAC[1] = board_current.ip4.MAC[1] = MAC_ADDR1;
	default_board_static.structure.ip4.MAC[2] = board_current.ip4.MAC[2] = MAC_ADDR2;
	default_board_static.structure.ip4.MAC[3] = board_current.ip4.MAC[3] = MAC_ADDR3;
	default_board_static.structure.ip4.MAC[4] = board_current.ip4.MAC[4] = MAC_ADDR4;
	default_board_static.structure.ip4.MAC[5] = board_current.ip4.MAC[5] = MAC_ADDR5;

	default_board_static.structure.ip4.gateway[0] = board_current.ip4.gateway[0] = GATEWAY_ADDRESS_0;
	default_board_static.structure.ip4.gateway[1] = board_current.ip4.gateway[1] = GATEWAY_ADDRESS_1;
	default_board_static.structure.ip4.gateway[2] = board_current.ip4.gateway[2] = GATEWAY_ADDRESS_2;
	default_board_static.structure.ip4.gateway[3] = board_current.ip4.gateway[3] = GATEWAY_ADDRESS_3;

	strncpy(board_current.ip4.hostname, HOSTNAME, HOSTNAME_LENGTH);
	strncpy(default_board_static.structure.ip4.hostname, HOSTNAME, HOSTNAME_LENGTH);

	default_board_static.structure.ip4.address[0] = board_current.ip4.address[0] = IP_ADDRESS_0;
	default_board_static.structure.ip4.address[1] = board_current.ip4.address[1] = IP_ADDRESS_1;
	default_board_static.structure.ip4.address[2] = board_current.ip4.address[2] = IP_ADDRESS_2;
	default_board_static.structure.ip4.address[3] = board_current.ip4.address[3] = IP_ADDRESS_3;

	default_board_static.structure.ip4.netmask[0] = board_current.ip4.netmask[0] = NETMASK_ADDRESS_0;
	default_board_static.structure.ip4.netmask[1] = board_current.ip4.netmask[1] = NETMASK_ADDRESS_1;
	default_board_static.structure.ip4.netmask[2] = board_current.ip4.netmask[2] = NETMASK_ADDRESS_2;
	default_board_static.structure.ip4.netmask[3] = board_current.ip4.netmask[3] = NETMASK_ADDRESS_3;

	default_board_static.structure.ip4.port = board_current.ip4.port = TCPIP_DEFAULT_PORT;

	strncpy(default_board_static.structure.security.password, PASSWORD, PASSWORD_LENGTH);
	board_current.security_status = 1;

	board_current.temperature.unit = 1;

	board_current.trigger.delay = 1; // 1ms
	board_current.trigger.in_slope = POS; // Positive
	board_current.trigger.out_slope = POS; // Positive
	board_current.trigger.source = IMM; // Immediate

	board_static = default_board_static;

}


void BSP_Init()
{
	if(MCU_DEFAULT_ON == HAL_GPIO_ReadPin(MCU_DEFAULT_GPIO_Port, MCU_DEFAULT_Pin))
	{
		BSP_Default();
	}
	else
	{
		BSP_Default();
	}

}
