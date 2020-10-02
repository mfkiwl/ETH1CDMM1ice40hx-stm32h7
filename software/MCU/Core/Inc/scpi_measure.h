/*
 * scpi_measure.h
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#ifndef INC_SCPI_MEASURE_H_
#define INC_SCPI_MEASURE_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_MeasureCurrentDC(scpi_t * context);
scpi_result_t SCPI_MeasureCurrentDCQ(scpi_t * context);
scpi_result_t SCPI_MeasureVoltageDC(scpi_t * context);
scpi_result_t SCPI_MeasureVoltageDCQ(scpi_t * context);

#endif /* INC_SCPI_MEASURE_H_ */
