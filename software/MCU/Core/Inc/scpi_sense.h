/*
 * scpi_sense.h
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#ifndef INC_SCPI_SENSE_H_
#define INC_SCPI_SENSE_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_SenseCurrentDCNullState(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullStateQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullValue(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullValueQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCRange(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCRangeQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCRangeAuto(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCRangeAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNPLC(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCNPLCQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCResolution(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCResolutionQ(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCZeroAuto(scpi_t * context);
scpi_result_t SCPI_SenseCurrentDCZeroAutoQ(scpi_t * context);

scpi_result_t SCPI_SenseVoltageDCNullState(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullStateQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullValue(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullValueQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCRange(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCRangeQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCRangeAuto(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCRangeAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNPLC(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCNPLCQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCResolution(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCResolutionQ(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCZeroAuto(scpi_t * context);
scpi_result_t SCPI_SenseVoltageDCZeroAutoQ(scpi_t * context);

scpi_result_t SCPI_SenseResistanceNullState(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullStateQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullValue(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullValueQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullAuto(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNullAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceRange(scpi_t * context);
scpi_result_t SCPI_SenseResistanceRangeQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceRangeAuto(scpi_t * context);
scpi_result_t SCPI_SenseResistanceRangeAutoQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNPLC(scpi_t * context);
scpi_result_t SCPI_SenseResistanceNPLCQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceResolution(scpi_t * context);
scpi_result_t SCPI_SenseResistanceResolutionQ(scpi_t * context);
scpi_result_t SCPI_SenseResistanceZeroAuto(scpi_t * context);
scpi_result_t SCPI_SenseResistanceZeroAutoQ(scpi_t * context);

#endif /* INC_SCPI_SENSE_H_ */
