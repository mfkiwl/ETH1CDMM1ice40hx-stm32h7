#ifndef	_EE24CONFIG_H
#define	_EE24CONFIG_H

#include "main.h"

extern I2C_HandleTypeDef hi2c4;
#define		_EEPROM_SIZE_KBIT			8
#define		_EEPROM_I2C   				hi2c4
#define		_EEPROM_USE_FREERTOS        1
#define		_EEPROM_ADDRESS             0xA0
#define		_EEPROM_USE_WP_PIN          1

#if (_EEPROM_USE_WP_PIN==1)
#define		_EEPROM_WP_GPIO				EEPROM_WP_GPIO_Port
#define		_EEPROM_WP_PIN				EEPROM_WP_Pin
#endif

#endif

