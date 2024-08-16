﻿USE [BD_CENTINELA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_DETALLE_X_LOTE_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_DETALLE_X_LOTE_GET] AS'
END
GO

ALTER PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_DETALLE_X_LOTE_GET]
	@LOTE	nvarchar(max)
	
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	LOTE
	,a.CIC
	,a.MONEDA
	,a.MONTO AS IMPORTE_ORIGINAL
	,a.PROCESADO
	,a.RESTANTE
	,b.TIPO_CAMBIO
	,b.MONTO as IMPORTE_AFECTADO
	,b.CUENTA_DEBITO
	,b.FECHA_REGISTRO
	,b.GLOSA
	,case [FLAG_DEBITO_ABONO]
	  when 0 then 'DEBITO'
	  when 1 then 'ABONO'
	  END AS TIPO_OPERACION
	,CASE 
		WHEN [PENDIENTE]=0 THEN 'PENDIENTE PROCESO'
		WHEN [PENDIENTE]=1 AND FLAG_DEBITO_ABONO=1 THEN 'ABONO COMPLETADO'
		WHEN [PENDIENTE]=1 AND FLAG_DEBITO_ABONO=0 THEN 'DEBITO COMPLETADO'
		WHEN [PENDIENTE]=2 THEN 'REGISTRADO'
		WHEN [PENDIENTE]=3 THEN 'RECHAZADO'
	 END AS 'ESTADO'


	FROM [cent].[AJUSTE_CLIENTE_COBRO] a inner join
[cent].[AJUSTE_CUENTAS_COBRO] b on a.ID_OPERACION=b.ID_OPERACION

	WHERE
	LOTE = @LOTE
	order by a.CIC
	

END
