/*
 * eeprom.h
 *
 *  Created on: Mar 15, 2020
 *      Author: grzegorz
 */

#ifndef INC_EEPROM_H_
#define INC_EEPROM_H_

#include "bsp.h"
#include "stm32f7xx_hal.h"

#define EEPROM_ADDRESS 0xA0U
#define EEPROM_SIZE 0x3FFU
#define EEPROM_WRITE_STATE 0x44U

#define EEPROM_B0 0x02U
#define EEPROM_B1 0x04U
#define EEPROM_BLOCK_COUNT 4U
#define EEPROM_BLOCK_SIZE 256U

BSP_StatusTypeDef EEPROM_Reset(void);
BSP_StatusTypeDef EEPROM_Write(union bsp_data *union_data, size_t size);
BSP_StatusTypeDef EEPROM_Read(union bsp_data *union_data, size_t size);
BSP_StatusTypeDef EEPROM_Status(void);

#endif /* INC_EEPROM_H_ */
