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

void BSP_Default()
{
	strncpy(default_board.structure.info.device, SCPI_IDN2, SCPI_DEVICE_STRING_LENGTH);
	strncpy(default_board.structure.info.manufacturer, SCPI_IDN1, SCPI_MANUFACTURER_STRING_LENGTH);
	strncpy(default_board.structure.info.serial_number, SCPI_IDN4, SCPI_SERIALNUMBER_STRING_LENGTH);
	strncpy(default_board.structure.info.software_version, SCPI_IDN3, SCPI_SOFTWAREVERSION_STRING_LENGTH);

	default_board.structure.system.dhcp.enable = FALSE;

	default_board.structure.system.ip4_static.MAC[0] = default_board.structure.system.ip4_current.MAC[0] = MAC_ADDR0;
	default_board.structure.system.ip4_static.MAC[1] = default_board.structure.system.ip4_current.MAC[1] = MAC_ADDR1;
	default_board.structure.system.ip4_static.MAC[2] = default_board.structure.system.ip4_current.MAC[2] = MAC_ADDR2;
	default_board.structure.system.ip4_static.MAC[3] = default_board.structure.system.ip4_current.MAC[3] = MAC_ADDR3;
	default_board.structure.system.ip4_static.MAC[4] = default_board.structure.system.ip4_current.MAC[4] = MAC_ADDR4;
	default_board.structure.system.ip4_static.MAC[5] = default_board.structure.system.ip4_current.MAC[5] = MAC_ADDR5;

	default_board.structure.system.ip4_static.gateway[0] = default_board.structure.system.ip4_current.gateway[0] = GATEWAY_ADDRESS_0;
	default_board.structure.system.ip4_static.gateway[1] = default_board.structure.system.ip4_current.gateway[1] = GATEWAY_ADDRESS_1;
	default_board.structure.system.ip4_static.gateway[2] = default_board.structure.system.ip4_current.gateway[2] = GATEWAY_ADDRESS_2;
	default_board.structure.system.ip4_static.gateway[3] = default_board.structure.system.ip4_current.gateway[3] = GATEWAY_ADDRESS_3;

	strncpy(default_board.structure.system.ip4_current.hostname, HOSTNAME, HOSTNAME_LENGTH);
	strncpy(default_board.structure.system.ip4_static.hostname, HOSTNAME, HOSTNAME_LENGTH);

	default_board.structure.system.ip4_static.address[0] = default_board.structure.system.ip4_current.address[0] = IP_ADDRESS_0;
	default_board.structure.system.ip4_static.address[1] = default_board.structure.system.ip4_current.address[1] = IP_ADDRESS_1;
	default_board.structure.system.ip4_static.address[2] = default_board.structure.system.ip4_current.address[2] = IP_ADDRESS_2;
	default_board.structure.system.ip4_static.address[3] = default_board.structure.system.ip4_current.address[3] = IP_ADDRESS_3;

	default_board.structure.system.ip4_static.netmask[0] = default_board.structure.system.ip4_current.netmask[0] = NETMASK_ADDRESS_0;
	default_board.structure.system.ip4_static.netmask[1] = default_board.structure.system.ip4_current.netmask[1] = NETMASK_ADDRESS_1;
	default_board.structure.system.ip4_static.netmask[2] = default_board.structure.system.ip4_current.netmask[2] = NETMASK_ADDRESS_2;
	default_board.structure.system.ip4_static.netmask[3] = default_board.structure.system.ip4_current.netmask[3] = NETMASK_ADDRESS_3;

	default_board.structure.system.ip4_static.port = default_board.structure.system.ip4_current.port = TCPIP_DEFAULT_PORT;

	strncpy(default_board.structure.system.security.password, PASSWORD, PASSWORD_LENGTH);
	default_board.structure.system.security.status = 1;

	default_board.structure.system.temperature.unit = 1;

	default_board.structure.trigger.delay = 1; // 1ms
	default_board.structure.trigger.in_slope = 1; // Positive
	default_board.structure.trigger.out_slope = 1; // Positive
	default_board.structure.trigger.source = 1; // Immediate

	board = default_board;

}


void BSP_Init()
{
	if(MCU_DEFAULT_ON == HAL_GPIO_ReadPin(MCU_DEFAULT_GPIO_Port, MCU_DEFAULT_Pin))
	{
		BSP_Default();
	}
	else
	{

	}

}
