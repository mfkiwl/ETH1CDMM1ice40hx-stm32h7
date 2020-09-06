/*
 * scpi_misc.h
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#ifndef INC_SCPI_MISC_H_
#define INC_SCPI_MISC_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_TestAllQ(scpi_t * context);
scpi_result_t SCPI_Abort(scpi_t * context);
scpi_result_t SCPI_FetchQ(scpi_t * context);
scpi_result_t SCPI_InitiateImmediate(scpi_t * context);
scpi_result_t SCPI_RQ(scpi_t * context);
scpi_result_t SCPI_ReadQ(scpi_t * context);
scpi_result_t SCPI_SampleCount(scpi_t * context);
scpi_result_t SCPI_SampleCountQ(scpi_t * context);

#endif /* INC_SCPI_MISC_H_ */
