/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SLE_SCLK_Pin GPIO_PIN_2
#define SLE_SCLK_GPIO_Port GPIOE
#define SLE_nRST_Pin GPIO_PIN_3
#define SLE_nRST_GPIO_Port GPIOE
#define SLE_nCS_Pin GPIO_PIN_4
#define SLE_nCS_GPIO_Port GPIOE
#define SLE_SO_Pin GPIO_PIN_5
#define SLE_SO_GPIO_Port GPIOE
#define SLE_SI_Pin GPIO_PIN_6
#define SLE_SI_GPIO_Port GPIOE
#define LED_RED_Pin GPIO_PIN_13
#define LED_RED_GPIO_Port GPIOC
#define LED_GREEN_Pin GPIO_PIN_14
#define LED_GREEN_GPIO_Port GPIOC
#define LED_BLUE_Pin GPIO_PIN_15
#define LED_BLUE_GPIO_Port GPIOC
#define OCS_nSYNC_Pin GPIO_PIN_6
#define OCS_nSYNC_GPIO_Port GPIOF
#define OCS_SPI5_SCK_Pin GPIO_PIN_7
#define OCS_SPI5_SCK_GPIO_Port GPIOF
#define OCS_SPI5_MISO_Pin GPIO_PIN_8
#define OCS_SPI5_MISO_GPIO_Port GPIOF
#define OCS_SPI5_MOSI_Pin GPIO_PIN_9
#define OCS_SPI5_MOSI_GPIO_Port GPIOF
#define MCU_DEFAULT_Pin GPIO_PIN_0
#define MCU_DEFAULT_GPIO_Port GPIOA
#define FPGA_SPI1_SCK_Pin GPIO_PIN_5
#define FPGA_SPI1_SCK_GPIO_Port GPIOA
#define TRIG_IN_Pin GPIO_PIN_12
#define TRIG_IN_GPIO_Port GPIOB
#define TRIG_IN_EXTI_IRQn EXTI15_10_IRQn
#define TRIG_OUT_Pin GPIO_PIN_13
#define TRIG_OUT_GPIO_Port GPIOB
#define TRIG_EN_Pin GPIO_PIN_14
#define TRIG_EN_GPIO_Port GPIOB
#define CXN_REL1_Pin GPIO_PIN_15
#define CXN_REL1_GPIO_Port GPIOB
#define EEPROM_WP_Pin GPIO_PIN_11
#define EEPROM_WP_GPIO_Port GPIOD
#define EEPROM_SCL_Pin GPIO_PIN_12
#define EEPROM_SCL_GPIO_Port GPIOD
#define EEPROM_SDA_Pin GPIO_PIN_13
#define EEPROM_SDA_GPIO_Port GPIOD
#define CXN_REL2_Pin GPIO_PIN_2
#define CXN_REL2_GPIO_Port GPIOG
#define CXN_REL3_Pin GPIO_PIN_3
#define CXN_REL3_GPIO_Port GPIOG
#define CXN_REL4_Pin GPIO_PIN_6
#define CXN_REL4_GPIO_Port GPIOG
#define CXN_REL5_Pin GPIO_PIN_7
#define CXN_REL5_GPIO_Port GPIOG
#define DC_AMP1_MUX_EN_Pin GPIO_PIN_6
#define DC_AMP1_MUX_EN_GPIO_Port GPIOC
#define DC_AMP1_MUX_A1_Pin GPIO_PIN_7
#define DC_AMP1_MUX_A1_GPIO_Port GPIOC
#define DC_AMP1_MUX_A0_Pin GPIO_PIN_8
#define DC_AMP1_MUX_A0_GPIO_Port GPIOC
#define TSENS_SDA_Pin GPIO_PIN_9
#define TSENS_SDA_GPIO_Port GPIOC
#define TSENS_SCL_Pin GPIO_PIN_8
#define TSENS_SCL_GPIO_Port GPIOA
#define AMPL_SEL_Pin GPIO_PIN_9
#define AMPL_SEL_GPIO_Port GPIOA
#define DC_AMP2_MUX_A0_Pin GPIO_PIN_10
#define DC_AMP2_MUX_A0_GPIO_Port GPIOA
#define DC_AMP2_MUX_A1_Pin GPIO_PIN_11
#define DC_AMP2_MUX_A1_GPIO_Port GPIOA
#define DC_AMP2_MUX_EN_Pin GPIO_PIN_12
#define DC_AMP2_MUX_EN_GPIO_Port GPIOA
#define DC_AMP_10MEG_Pin GPIO_PIN_15
#define DC_AMP_10MEG_GPIO_Port GPIOA
#define OSC_HV_PROT_Pin GPIO_PIN_10
#define OSC_HV_PROT_GPIO_Port GPIOC
#define FPGA_IO1_Pin GPIO_PIN_3
#define FPGA_IO1_GPIO_Port GPIOD
#define FPGA_IO2_Pin GPIO_PIN_4
#define FPGA_IO2_GPIO_Port GPIOD
#define FPGA_UART2_TX_TTL_Pin GPIO_PIN_5
#define FPGA_UART2_TX_TTL_GPIO_Port GPIOD
#define FPGA_UART2_RX_TTL_Pin GPIO_PIN_6
#define FPGA_UART2_RX_TTL_GPIO_Port GPIOD
#define FPGA_SPI1_MOSI_Pin GPIO_PIN_7
#define FPGA_SPI1_MOSI_GPIO_Port GPIOD
#define FPGA_SPI1_MISO_Pin GPIO_PIN_9
#define FPGA_SPI1_MISO_GPIO_Port GPIOG
#define FPGA_SPI1_NSS_Pin GPIO_PIN_10
#define FPGA_SPI1_NSS_GPIO_Port GPIOG
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
