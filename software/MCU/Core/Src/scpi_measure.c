/*
 * scpi_measure.c
 *
 *  Created on: Sep 6, 2020
 *      Author: grzegorz
 */

#include "scpi_measure.h"

/*
 * MEASure:CURRent[:DC] [{<range>|AUTO|MIN|MAX|DEF} [,{<resolution>|MIN|MAX|DEF}]]
 *
 * @INFO:
 * Sets all measurement parameters and trigger parameters to their default values for DC current measurements and immediately triggers a measurement.
 * The results are sent directly to the instrument's output buffer.
 *
 * @PARAMETERS:
 *				<range>			100 μA|1 mA|10 mA|100 mA|1 A|3 A, default AUTO (autorange)
 *				<resolution>	TBD
 *
 */

scpi_result_t SCPI_MeasureCurrentDC(scpi_t * context)
{
	return SCPI_RES_OK;
}

/*
 * MEASure:CURRent[:DC]?
 *
 * @INFO:
 *
 */

scpi_result_t SCPI_MeasureCurrentDCQ(scpi_t * context)
{
	return SCPI_RES_OK;
}


/*
 * MEASure:[VOLtage][:DC] [{<range>|AUTO|MIN|MAX|DEF} [,{<resolution>|MIN|MAX|DEF}]]
 *
 * @INFO:
 * Sets all measurement parameters and trigger parameters to their default values for DC voltage ratio measurements
 * and immediately triggers a measurement. The results are sent directly to the instrument's output buffer.
 *
 * @PARAMETERS:
 *				<range>			100 mV, 1 V, 10 V, 100 V, AUTO (default) or DEFault
 *				<resolution>	TBD
 *
 */

scpi_result_t SCPI_MeasureVoltageDC(scpi_t * context)
{
	return SCPI_RES_OK;
}

/*
 * MEASure:[VOLtage][:DC]:RATio?
 *
 * @INFO:
 *
 */

scpi_result_t SCPI_MeasureVoltageDCQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

