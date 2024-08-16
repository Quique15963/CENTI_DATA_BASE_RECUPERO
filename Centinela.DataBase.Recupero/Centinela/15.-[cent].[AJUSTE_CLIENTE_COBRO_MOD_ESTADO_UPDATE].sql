﻿USE [BD_CENTINELA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_MOD_ESTADO_UPDATE]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_MOD_ESTADO_UPDATE] AS'
END
GO

ALTER PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_MOD_ESTADO_UPDATE]
	@LOTE	nvarchar(max)
	,@PENDIENTE	INT
	,@USUARIO	nchar(10)
	
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE[cent].[AJUSTE_CLIENTE_COBRO] SET
	USUARIO_APRO_RECH=@USUARIO
	,PENDIENTE=@PENDIENTE
	,FECHA_APRO_RECH=GETDATE()

	WHERE
	LOTE = @LOTE
	and PENDIENTE=2
	
	

END
