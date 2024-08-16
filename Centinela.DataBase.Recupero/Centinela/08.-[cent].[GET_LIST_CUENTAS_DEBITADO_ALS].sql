USE [BD_CENTINELA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[Get_List_Cuentas_Debitado_ALS]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [cent].[Get_List_Cuentas_Debitado_ALS] AS'
END
GO

ALTER PROCEDURE [cent].[Get_List_Cuentas_Debitado_ALS]
AS

/*****************************************************************************************************************
	*Descripcion: Procedimiento para obtener la lista de Cobros Realizados por el Centinela Centi_Api_Payments - ALS
	*Fecha Modificación: 24/06/2024
	*Autor:	
	*Cambios Importantes: 
******************************************************************************************************************/

BEGIN

	SELECT DISTINCT
		 [ID_CUENTA]--
		,[CIC]--
		,[CUENTA_ALS]--
		,[CUENTA_DEBITO]--
		,[ALS_CUENTAS_COBRO_DIA_0].[MONEDA]--
		,[MONTO]
		,[TIPO_CAMBIO]
		,[GLOSA]
		,[SERVICIO]
		,[ALS_CUENTAS_COBRO_DIA_0].[ID_OPERACION]
		,[INTENTO]
		--,'ALS' AS [SITUACION]
		--,'MORA' AS [NOMBRE_SITUACION]
		--,3 AS [DIAS_MORA]
		,[REQUEST_BIZTALK]
		,[RESPONSE_BIZTALK]
		,[ALS_CUENTAS_COBRO_DIA_0].[FECHA_REGISTRO]--
		,[EXTORNO]
		,[COD_EXTORNO]--
		,[REQUEST_BIZTALK_EXTORNO]
		,[RESPONSE_BIZTALK_EXTORNO]
		,[FECHA_EXTORNO]
		 -- DATOS DE LA TABLA [ALS_TRJ_CTA_PAS_MORA]
		,[DIAS_MORA]
		,[CA_APLICATIVO]
		,[CA_SITUACION]
		,[TIPO_CLIENTE]
		,[CP_APLICATIVO]
	 FROM 
		[BD_CENTINELA].[cent].[ALS_CUENTAS_COBRO_DIA_0]
		INNER JOIN [cent].[ALS_TRJ_CTA_PAS_MORA]
		ON [ALS_CUENTAS_COBRO_DIA_0].CIC = [ALS_TRJ_CTA_PAS_MORA].CP_CIC
		AND [ALS_CUENTAS_COBRO_DIA_0].CUENTA_ALS = [ALS_TRJ_CTA_PAS_MORA].CUENTA
		--AND [ALS_CUENTAS_COBRO_MORA].FECHA_REGISTRO = [ALS_TRJ_CTA_PAS_MORA].FECHA_REGISTRO
	 WHERE
	    [ALS_TRJ_CTA_PAS_MORA].CA_APLICATIVO = 'ALS' 
		AND [ALS_TRJ_CTA_PAS_MORA].TIPO_CLIENTE = 'TITULAR'
		AND CONVERT(DATE, [ALS_CUENTAS_COBRO_DIA_0].FECHA_REGISTRO) = CONVERT(DATE, GETDATE())
	ORDER BY FECHA_REGISTRO DESC

END