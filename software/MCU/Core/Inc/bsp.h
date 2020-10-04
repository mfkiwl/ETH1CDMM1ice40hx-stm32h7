/*
 * board_def.h
 *
 *  Created on: Mar 14, 2020
 *      Author: grzegorz
 */

#ifndef INC_BSP_H_
#define INC_BSP_H_

#include "stm32f7xx_hal.h"
#include "scpi/scpi.h"


#define SDRAM_BANK_ADDR                 ((uint32_t)0xD0000000)
#define SDRAM_MEMORY_SIZE           	(uint32_t)0x800000

/* #define SDRAM_MEMORY_WIDTH            FMC_SDRAM_MEM_BUS_WIDTH_8 */
#define SDRAM_MEMORY_WIDTH            FMC_SDRAM_MEM_BUS_WIDTH_16

/* #define SDCLOCK_PERIOD                   FMC_SDRAM_CLOCK_PERIOD_2 */
#define SDCLOCK_PERIOD                FMC_SDRAM_CLOCK_PERIOD_3

#define SDRAM_TIMEOUT     ((uint32_t)0xFFFF)

#define SDRAM_MODEREG_BURST_LENGTH_1             ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_LENGTH_2             ((uint16_t)0x0001)
#define SDRAM_MODEREG_BURST_LENGTH_4             ((uint16_t)0x0002)
#define SDRAM_MODEREG_BURST_LENGTH_8             ((uint16_t)0x0004)
#define SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL      ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_TYPE_INTERLEAVED     ((uint16_t)0x0008)
#define SDRAM_MODEREG_CAS_LATENCY_2              ((uint16_t)0x0020)
#define SDRAM_MODEREG_CAS_LATENCY_3              ((uint16_t)0x0030)
#define SDRAM_MODEREG_OPERATING_MODE_STANDARD    ((uint16_t)0x0000)
#define SDRAM_MODEREG_WRITEBURST_MODE_PROGRAMMED ((uint16_t)0x0000)
#define SDRAM_MODEREG_WRITEBURST_MODE_SINGLE     ((uint16_t)0x0200)
#define REFRESH_COUNT       					 ((uint32_t)0x056A)   /* SDRAM refresh counter (90MHz SDRAM clock) */

#define SCPI_MANUFACTURER_STRING_LENGTH 49
#define SCPI_DEVICE_STRING_LENGTH 49
#define SCPI_SERIALNUMBER_STRING_LENGTH 49
#define SCPI_SOFTWAREVERSION_STRING_LENGTH 49

#define PASSWORD_LENGTH 49
#define PASSWORD "ETH1CDMM1"

#define IP_ADDRESS_0 192
#define IP_ADDRESS_1 168
#define IP_ADDRESS_2 0
#define IP_ADDRESS_3 123

#define NETMASK_ADDRESS_0 255
#define NETMASK_ADDRESS_1 255
#define NETMASK_ADDRESS_2 255
#define NETMASK_ADDRESS_3 0

#define GATEWAY_ADDRESS_0 192
#define GATEWAY_ADDRESS_1 168
#define GATEWAY_ADDRESS_2 0
#define GATEWAY_ADDRESS_3 1

#define MAC_0 0x00
#define MAC_1 0x80
#define MAC_2 0xE1
#define MAC_3 0x00
#define MAC_4 0x00
#define MAC_5 0x00

#define HOSTNAME_LENGTH 20
#define HOSTNAME "ETH1CDMM1"

#define TCPIP_DEFAULT_PORT 2000

#define MCU_DEFAULT_ON 0
#define MCU_DEFAULT_OFF 1

#define MCU_SERVICE_SECURITY_OFF 0
#define MCU_SERVICE_SECURITY_ON 1

#define STRUCT_SIZE 285


enum dmm_function_enum
{
	dc_voltage = 1,
	dc_current = 2,
	resistance_2w = 3,
	resistance_4w = 4,
	autozero = 5
};

#pragma pack(push, 1)

// size 196
struct bsp_scpi_info
{
	char manufacturer[SCPI_MANUFACTURER_STRING_LENGTH];
	char device[SCPI_DEVICE_STRING_LENGTH];
	char serial_number[SCPI_SERIALNUMBER_STRING_LENGTH];
	char software_version[SCPI_SOFTWAREVERSION_STRING_LENGTH];

};

// size 5
struct bsp_dmm
{
	uint32_t sample_count;
	uint8_t function;
	float range;
	uint8_t gain;
	uint16_t switch_path;
};

typedef struct bsp_dmm bsp_dmm_t;

// size 11
struct bsp_trigger
{
	uint8_t out_slope;
	uint8_t in_slope;
	double delay;
	uint8_t source;
};

typedef struct bsp_trigger bsp_trigger_t;

// size 40
struct bsp_ip4_lan
{
	uint8_t address[4];
	uint8_t netmask[4];
	uint8_t gateway[4];
	uint8_t MAC[6];
	char hostname[HOSTNAME_LENGTH];
	uint16_t port;
};

// size 49
struct bsp_security
{
	char password[PASSWORD_LENGTH];
};

// size 1
struct bsp_temperature
{
	uint8_t unit;
};

struct bsp_relay
{
	uint8_t status[5];

};

typedef struct bsp_ip4_lan bsp_ip4_lan_t;
typedef struct bsp_scpi_info bsp_scpi_info_t;
typedef struct bsp_security bsp_security_t;
typedef struct bsp_temperature bsp_temperature_t;
typedef struct bsp_relay bsp_relay_t;


union bsp_data
{
	struct bsp_config
	{
		bsp_scpi_info_t info; // size 196
		bsp_ip4_lan_t ip4; // size 40
		bsp_security_t security; // 49
	}structure;

	uint8_t bytes[STRUCT_SIZE];

}board_static, default_board_static, test;

struct bsp_status
{
	uint8_t security_status;
	bsp_temperature_t temperature;
	bsp_trigger_t trigger;
	uint8_t default_cfg;
	bsp_dmm_t dmm;
	bsp_ip4_lan_t ip4;
	bsp_relay_t relay;

}board_current;

#pragma pack(pop)

typedef enum
{
  BSP_OK       = 0x00U,
  BSP_ERROR    = 0x01U,
  BSP_BUSY = 0x02U,
  BSP_TIMEOUT  = 0x03U,
  BSP_EEPROM_EMPTY = 0x04U,
  BSP_EEPROM_MAX_SIZE = 0x05U,
  BSP_EEPROM_NO_CONNECTION = 0x06U,
  BSP_EEPROM_WRITE_ERROR = 0x07U,
  BSP_EEPROM_READ_ERROR = 0x08U

} BSP_StatusTypeDef;

enum trigger_enum
{
	IMM = 1,
	EXT = 2,
	BUS = 3,
	OUT = 4
};

enum trigger_slope_enum
{
	POS = 1,
	NEG = 2
};

typedef enum
{
	ASCII = 0,
	REAL = 1
} BSP_FormatDataSrcTypeDef;


#endif /* INC_BSP_H_ */
