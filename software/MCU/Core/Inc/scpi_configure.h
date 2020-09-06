/*
 * scpi_configure.h
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#ifndef INC_SCPI_CONFIGURE_H_
#define INC_SCPI_CONFIGURE_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_ConfigureQ(scpi_t * context);
scpi_result_t SCPI_ConfigureCurrentAC(scpi_t * context);
scpi_result_t SCPI_ConfigureCurrentDC(scpi_t * context);
scpi_result_t SCPI_ConfigureResistance(scpi_t * context);
scpi_result_t SCPI_ConfigureVoltageAC(scpi_t * context);
scpi_result_t SCPI_ConfigureVoltageDC(scpi_t * context);

#endif /* INC_SCPI_CONFIGURE_H_ */
