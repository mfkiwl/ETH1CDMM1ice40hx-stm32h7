/*
 * scpi_data.h
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#ifndef INC_SCPI_DATA_H_
#define INC_SCPI_DATA_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_DataLastQ(scpi_t * context);
scpi_result_t SCPI_DataPointsQ(scpi_t * context);
scpi_result_t SCPI_DataPointsEventThreshold(scpi_t * context);
scpi_result_t SCPI_DataPointsEventThresholdQ(scpi_t * context);
scpi_result_t SCPI_DataRemoveQ(scpi_t * context);

#endif /* INC_SCPI_DATA_H_ */
