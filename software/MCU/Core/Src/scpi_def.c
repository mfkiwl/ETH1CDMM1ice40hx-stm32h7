/*-
 * Copyright (c) 2012-2013 Jan Breuer,
 *
 * All Rights Reserved
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file   scpi-def.c
 * @date   Thu Nov 15 10:58:45 UTC 2012
 *
 * @brief  SCPI parser test
 *
 *
 */

#include <bsp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "scpi_def.h"
#include "scpi/scpi.h"
#include "main.h"
#include "eeprom.h"

#include "scpi_system.h"
#include "scpi_trigger.h"
#include "scpi_measure.h"
#include "scpi_calibration.h"
#include "scpi_data.h"
#include "scpi_misc.h"
#include "scpi_sense.h"
#include "scpi_configure.h"


extern SDRAM_HandleTypeDef hsdram1;
extern SPI_HandleTypeDef hspi1;

scpi_choice_def_t boolean_select[] =
{
    {"OFF", 0},
    {"ON", 1},
	{"0", 0},
	{"1", 1},
    SCPI_CHOICE_LIST_END
};



static scpi_result_t TEST_TSQ(scpi_t * context)
{
/*	uint8_t data[1];
	uint8_t val_bool;
	if(!SCPI_ParamBool(context, &val_bool, TRUE))
	{
		return SCPI_RES_ERR;
	}

	val_bool == 1?(data[0] = 0x55):(data[0] = 0x54);

	HAL_GPIO_WritePin(FPGA_SPI1_NSS_GPIO_Port, FPGA_SPI1_NSS_Pin, 0);
	HAL_SPI_Transmit(&hspi1, data, 1, 1000);
	HAL_GPIO_WritePin(FPGA_SPI1_NSS_GPIO_Port, FPGA_SPI1_NSS_Pin, 1); */

	EEPROM_Status();


	return SCPI_RES_OK;
}


/**
 * @brief
 * parses lists
 * channel numbers > 0.
 * no checks yet.
 * valid: (@1), (@3!1:1!3), ...
 * (@1!1:3!2) would be 1!1, 1!2, 2!1, 2!2, 3!1, 3!2.
 * (@3!1:1!3) would be 3!1, 3!2, 3!3, 2!1, 2!2, 2!3, ... 1!3.
 *
 * @param channel_list channel list, compare to SCPI99 Vol 1 Ch. 8.3.2
 */

/**
 * Reimplement IEEE488.2 *TST?
 *
 * Result should be 0 if everything is ok
 * Result should be 1 if something goes wrong
 *
 * Return SCPI_RES_OK
 */
static scpi_result_t My_CoreTstQ(scpi_t * context) {

    SCPI_ResultInt32(context, 0);

    return SCPI_RES_OK;
}

const scpi_command_t scpi_commands[] = {
    /* IEEE Mandated Commands (SCPI std V1999.0 4.1.1) */
    { .pattern = "*CLS", .callback = SCPI_CoreCls,},
    { .pattern = "*ESE", .callback = SCPI_CoreEse,},
    { .pattern = "*ESE?", .callback = SCPI_CoreEseQ,},
    { .pattern = "*ESR?", .callback = SCPI_CoreEsrQ,},
    { .pattern = "*IDN?", .callback = SCPI_CoreIdnQ,},
    { .pattern = "*OPC", .callback = SCPI_CoreOpc,},
    { .pattern = "*OPC?", .callback = SCPI_CoreOpcQ,},
    { .pattern = "*RST", .callback = SCPI_CoreRst,},
    { .pattern = "*SRE", .callback = SCPI_CoreSre,},
    { .pattern = "*SRE?", .callback = SCPI_CoreSreQ,},
    { .pattern = "*STB?", .callback = SCPI_CoreStbQ,},
    { .pattern = "*TST?", .callback = My_CoreTstQ,},
    { .pattern = "*WAI", .callback = SCPI_CoreWai,},

    {.pattern = "STATus:QUEStionable[:EVENt]?", .callback = SCPI_StatusQuestionableEventQ,},
    /* {.pattern = "STATus:QUEStionable:CONDition?", .callback = scpi_stub_callback,}, */
    {.pattern = "STATus:QUEStionable:ENABle", .callback = SCPI_StatusQuestionableEnable,},
    {.pattern = "STATus:QUEStionable:ENABle?", .callback = SCPI_StatusQuestionableEnableQ,},

    {.pattern = "STATus:PRESet", .callback = SCPI_StatusPreset,},

    /* Required SCPI commands (SCPI std V1999.0 4.2.1) */
    {.pattern = "SYSTem:ERRor[:NEXT]?", .callback = SCPI_SystemErrorNextQ,},
    {.pattern = "SYSTem:ERRor:COUNt?", .callback = SCPI_SystemErrorCountQ,},
    {.pattern = "SYSTem:VERSion?", .callback = SCPI_SystemVersionQ,},

	//scpi_system.c
	{.pattern = "SYSTem:COMMunicate:LAN:IPADdress", .callback = SCPI_SystemCommunicateLANIPAddress,},
	{.pattern = "SYSTem:COMMunicate:LAN:IPADdress?", .callback = SCPI_SystemCommunicateLANIPAddressQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:SMASk", .callback = SCPI_SystemCommunicateLANIPSmask,},
	{.pattern = "SYSTem:COMMunicate:LAN:SMASk?", .callback = SCPI_SystemCommunicateLANIPSmaskQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:GATEway", .callback = SCPI_SystemCommunicateLANGateway,},
	{.pattern = "SYSTem:COMMunicate:LAN:GATEway?", .callback = SCPI_SystemCommunicateLANGatewayQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:MAC", .callback = SCPI_SystemCommunicateLANMAC,},
	{.pattern = "SYSTem:COMMunicate:LAN:MAC?", .callback = SCPI_SystemCommunicateLANMACQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:PORT", .callback = SCPI_SystemCommunicateLANPort,},
	{.pattern = "SYSTem:COMMunicate:LAN:PORT?", .callback = SCPI_SystemCommunicateLANPortQ,},
	{.pattern = "SYSTem:COMMunication:LAN:UPDate", .callback = SCPI_SystemCommunicationLanUpdate,},
	{.pattern = "SYSTem:SERVice:EEPROM", .callback = SCPI_SystemServiceEEPROM,},
	{.pattern = "SYSTem:SERVice:ID", .callback = SCPI_SystemServiceID,},
	{.pattern = "SYSTem:SECure:STATe", .callback = SCPI_SystemSecureState,},
	{.pattern = "SYSTem:SECure:STATe?", .callback = SCPI_SystemSecureStateQ,},
	{.pattern = "SYSTem:TEMPerature?", .callback = SCPI_SystemTemperatureQ,},
	{.pattern = "SYSTem:TEMPerature:UNIT", .callback = SCPI_SystemTemperatureUnit,},
	{.pattern = "SYSTem:TEMPerature:UNIT?", .callback = SCPI_SystemTemperatureUnitQ,},
	{.pattern = "SYSTem:HUMIdity?", .callback = SCPI_SystemHumidityQ,},

	// scpi_trigger.c
	{.pattern = "TRIGger:DELay", .callback = SCPI_TriggerDelay,},
	{.pattern = "TRIGger:DELay?", .callback = SCPI_TriggerDelayQ,},
	{.pattern = "TRIGger[:IMMediate]", .callback = SCPI_TriggerImmediate,},
	{.pattern = "TRIGger:SOURce", .callback = SCPI_TriggerSource,},
	{.pattern = "TRIGger:SOURce?", .callback = SCPI_TriggerSourceQ,},
	{.pattern = "TRIGger:SLOPe", .callback = SCPI_TriggerSlope,},
	{.pattern = "TRIGger:SLOPe?", .callback = SCPI_TriggerSlopeQ,},

	{.pattern = "TRIGger:OUTput", .callback = SCPI_TriggerOutput,},
	{.pattern = "TRIGger:OUTput:SLOPe", .callback = SCPI_TriggerOutputSlope,},
	{.pattern = "TRIGger:OUTput:SLOPe?", .callback = SCPI_TriggerOutputSlopeQ,},
	{.pattern = "*TRG", .callback = SCPI_TRG,},

	// scpi_measure.c
	{.pattern="MEASure:CURRent[:DC]", .callback = SCPI_MeasureCurrentDC,},
	{.pattern="MEASure:CURRent[:DC]?", .callback = SCPI_MeasureCurrentDCQ,},
	{.pattern="MEASure[:VOLTage][:DC]:RATio", .callback = SCPI_MeasureVoltageDCRatio,},
	{.pattern="MEASure[:VOLTage][:DC]:RATio?", .callback = SCPI_MeasureVoltageDCRatioQ,},

	// scpi_sense.c
	{.pattern="[SENSe:]CURRent:DC:NULL[:STATe]", .callback = SCPI_SenseCurrentDCNullState,},
	{.pattern="[SENSe:]CURRent:DC:NULL[:STATe]?", .callback = SCPI_SenseCurrentDCNullStateQ,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue", .callback = SCPI_SenseCurrentDCNullValue,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue?", .callback = SCPI_SenseCurrentDCNullValueQ,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue:AUTO", .callback = SCPI_SenseCurrentDCNullAuto,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue:AUTO?", .callback = SCPI_SenseCurrentDCNullAutoQ,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue:AUTO", .callback = SCPI_SenseCurrentDCNullAuto,},
	{.pattern="[SENSe:]CURRent:DC:NULL:VALue:AUTO?", .callback = SCPI_SenseCurrentDCNullAutoQ,},
	{.pattern="[SENSe:]CURRent:DC:RANGe", .callback = SCPI_SenseCurrentDCRange,},
	{.pattern="[SENSe:]CURRent:DC:RANGe?", .callback = SCPI_SenseCurrentDCRangeQ,},
	{.pattern="[SENSe:]CURRent:DC:RANGe:AUTO", .callback = SCPI_SenseCurrentDCRangeAuto,},
	{.pattern="[SENSe:]CURRent:DC:RANGe:AUTO?", .callback = SCPI_SenseCurrentDCRangeAutoQ,},
	{.pattern="[SENSe:]CURRent[:DC]:NPLC", .callback = SCPI_SenseCurrentDCNPLC,},
	{.pattern="[SENSe:]CURRent[:DC]:NPLC?", .callback = SCPI_SenseCurrentDCNPLCQ,},
	{.pattern="[SENSe:]CURRent[:DC]:RESolution", .callback = SCPI_SenseCurrentDCResolution,},
	{.pattern="[SENSe:]CURRent[:DC]:RESolution?", .callback = SCPI_SenseCurrentDCResolutionQ,},
	{.pattern="[SENSe:]CURRent[:DC]:ZERO:AUTO", .callback = SCPI_SenseCurrentDCZeroAuto,},
	{.pattern="[SENSe:]CURRent[:DC]:ZERO:AUTO?", .callback = SCPI_SenseCurrentDCZeroAutoQ,},

	{.pattern="[SENSe:]VOLTage:DC:NULL[:STATe]", .callback = SCPI_SenseVoltageDCNullState,},
	{.pattern="[SENSe:]VOLTage:DC:NULL[:STATe]?", .callback = SCPI_SenseVoltageDCNullStateQ,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue", .callback = SCPI_SenseVoltageDCNullValue,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue?", .callback = SCPI_SenseVoltageDCNullValueQ,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue:AUTO", .callback = SCPI_SenseVoltageDCNullAuto,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue:AUTO?", .callback = SCPI_SenseVoltageDCNullAutoQ,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue:AUTO", .callback = SCPI_SenseVoltageDCNullAuto,},
	{.pattern="[SENSe:]VOLTage:DC:NULL:VALue:AUTO?", .callback = SCPI_SenseVoltageDCNullAutoQ,},
	{.pattern="[SENSe:]VOLTage:DC:RANGe", .callback = SCPI_SenseVoltageDCRange,},
	{.pattern="[SENSe:]VOLTage:DC:RANGe?", .callback = SCPI_SenseVoltageDCRangeQ,},
	{.pattern="[SENSe:]VOLTage:DC:RANGe:AUTO", .callback = SCPI_SenseVoltageDCRangeAuto,},
	{.pattern="[SENSe:]VOLTage:DC:RANGe:AUTO?", .callback = SCPI_SenseVoltageDCRangeAutoQ,},
	{.pattern="[SENSe:]VOLTage[:DC]:NPLC", .callback = SCPI_SenseVoltageDCNPLC,},
	{.pattern="[SENSe:]VOLTage[:DC]:NPLC?", .callback = SCPI_SenseVoltageDCNPLCQ,},
	{.pattern="[SENSe:]VOLTage[:DC]:RESolution", .callback = SCPI_SenseVoltageDCResolution,},
	{.pattern="[SENSe:]VOLTage[:DC]:RESolution?", .callback = SCPI_SenseVoltageDCResolutionQ,},
	{.pattern="[SENSe:]VOLTage[:DC]:ZERO:AUTO", .callback = SCPI_SenseVoltageDCZeroAuto,},
	{.pattern="[SENSe:]VOLTage[:DC]:ZERO:AUTO?", .callback = SCPI_SenseVoltageDCZeroAutoQ,},

	{.pattern="[SENSe:]RESistance:NULL[:STATe]", .callback = SCPI_SenseResistanceNullState,},
	{.pattern="[SENSe:]RESistance:NULL[:STATe]?", .callback = SCPI_SenseResistanceNullStateQ,},
	{.pattern="[SENSe:]RESistance:NULL:VALue", .callback = SCPI_SenseResistanceNullValue,},
	{.pattern="[SENSe:]RESistance:NULL:VALue?", .callback = SCPI_SenseResistanceNullValueQ,},
	{.pattern="[SENSe:]RESistance:NULL:VALue:AUTO", .callback = SCPI_SenseResistanceNullAuto,},
	{.pattern="[SENSe:]RESistance:NULL:VALue:AUTO?", .callback = SCPI_SenseResistanceNullAutoQ,},
	{.pattern="[SENSe:]RESistance:NULL:VALue:AUTO", .callback = SCPI_SenseResistanceNullAuto,},
	{.pattern="[SENSe:]RESistance:NULL:VALue:AUTO?", .callback = SCPI_SenseResistanceNullAutoQ,},
	{.pattern="[SENSe:]RESistance:RANGe", .callback = SCPI_SenseResistanceRange,},
	{.pattern="[SENSe:]RESistance:RANGe?", .callback = SCPI_SenseResistanceRangeQ,},
	{.pattern="[SENSe:]RESistance:RANGe:AUTO", .callback = SCPI_SenseResistanceRangeAuto,},
	{.pattern="[SENSe:]RESistance:RANGe:AUTO?", .callback = SCPI_SenseResistanceRangeAutoQ,},
	{.pattern="[SENSe:]RESistance:NPLC", .callback = SCPI_SenseResistanceNPLC,},
	{.pattern="[SENSe:]RESistance:NPLC?", .callback = SCPI_SenseResistanceNPLCQ,},
	{.pattern="[SENSe:]RESistance:RESolution", .callback = SCPI_SenseResistanceResolution,},
	{.pattern="[SENSe:]RESistance:RESolution?", .callback = SCPI_SenseResistanceResolutionQ,},
	{.pattern="[SENSe:]RESistance:ZERO:AUTO", .callback = SCPI_SenseResistanceZeroAuto,},
	{.pattern="[SENSe:]RESistance:ZERO:AUTO?", .callback = SCPI_SenseResistanceZeroAutoQ,},

	// scpi_configure.c
	{.pattern="CONFigure?", .callback = SCPI_ConfigureQ,},
	{.pattern="CONFigure:CURRent:AC", .callback = SCPI_ConfigureCurrentAC,},
	{.pattern="CONFigure:CURRent:DC", .callback = SCPI_ConfigureCurrentDC,},
	{.pattern="CONFigure:RESistance", .callback = SCPI_ConfigureResistance,},
	{.pattern="CONFigure:VOLTage:AC", .callback = SCPI_ConfigureVoltageAC,},
	{.pattern="CONFigure:VOLTage:DC", .callback = SCPI_ConfigureVoltageDC,},

	// scpi_data.c
	{.pattern="DATA:LAST?", .callback = SCPI_DataLastQ,},
	{.pattern="DATA:POINts?", .callback = SCPI_DataPointsQ,},
	{.pattern="DATA:POINts:EVENt:THReshold", .callback = SCPI_DataPointsEventThreshold,},
	{.pattern="DATA:POINts:EVENt:THReshold?", .callback = SCPI_DataPointsEventThresholdQ,},
	{.pattern="DATA:REMove?", .callback = SCPI_DataRemoveQ,},

	//scpi_misc.c
	{.pattern="TEST:ALL?", .callback = SCPI_TestAllQ,},
	{.pattern="ABORt", .callback = SCPI_Abort,},
	{.pattern="FETCh?", .callback = SCPI_FetchQ,},
	{.pattern="INITiate[:IMMediate]", .callback = SCPI_InitiateImmediate,},
	{.pattern="R?", .callback = SCPI_RQ,},
	{.pattern="READ?", .callback = SCPI_ReadQ,},
	{.pattern="SAMPle:COUNt", .callback = SCPI_SampleCount,},
	{.pattern="SAMPle:COUNt?", .callback = SCPI_SampleCountQ,},

	// scpi_calibration.c
	{.pattern="CALibration:ADC?", .callback = SCPI_CalibrationADCQ,},
	{.pattern="CALibration[:ALL]?", .callback = SCPI_CalibrationAllQ,},
	{.pattern="CALibration:COUNt?", .callback = SCPI_CalibrationCountQ,},
	{.pattern="CALibration:SECure:CODE", .callback = SCPI_CalibrationSecureCode,},
	{.pattern="CALibration:SECure:STATe", .callback = SCPI_CalibrationSecureState,},
	{.pattern="CALibration:STORe", .callback = SCPI_CalibrationStore,},
	{.pattern="CALibration:STRing", .callback = SCPI_CalibrationString,},
	{.pattern="CALibration:VALue", .callback = SCPI_CalibrationValue,},


	{.pattern = "TS?", .callback = TEST_TSQ,},

		SCPI_CMD_LIST_END
};

scpi_interface_t scpi_interface = {
    .error = SCPI_Error,
    .write = SCPI_Write,
    .control = SCPI_Control,
    .flush = SCPI_Flush,
    .reset = SCPI_Reset,
};

char scpi_input_buffer[SCPI_INPUT_BUFFER_LENGTH];
scpi_error_t scpi_error_queue_data[SCPI_ERROR_QUEUE_SIZE];

scpi_t scpi_context;
