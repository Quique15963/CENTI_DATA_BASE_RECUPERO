USE [BD_CENTINELA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_INSERT]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_INSERT] AS'
END
GO
ALTER PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_INSERT]
		    @CIC varchar(12)
           ,@MONEDA char(3)
           ,@MONTO decimal(18,2)
           ,@FECHA_FIN_COBRO char(8)
           ,@FLAG_DEBITO_CTA int
           ,@CUENTA varchar(26)
           ,@GLOSAUTILIZAR varchar(20)
           ,@SERVICIO int
           ,@FLAG_DEBITO_ABONO int
           ,@LOTE nvarchar(max)
		   ,@USUARIO Nchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	

 
INSERT INTO [cent].[AJUSTE_CLIENTE_COBRO]
           ([CIC]
           ,[MONEDA]
           ,[MONTO]
           ,[PROCESADO]
           ,[RESTANTE]
           ,[PENDIENTE]
           ,[FECHA_FIN_COBRO]
           ,[FLAG_DEBITO_CTA]
           ,[CUENTA]
           ,[FLAG_CONTA]
           ,[CUENTA_CONTABLE]
           ,[FECHA_REGISTRO]
           ,[FECHA_ACTUALIZACION]
           ,[GLOSAUTILIZAR]
           ,[SERVICIO]
           ,[ULTIMO_ESTADO]
           ,[ULTIMO_ESTADO_DESC]
           ,[ULTIMA_RESPUESTA]
           ,[INTENTOS]
           ,[FLAG_DEBITO_ABONO]
           ,[LOTE]
		   ,USUARIO_REGISTRO
		   ,USUARIO_APRO_RECH
		   ,FECHA_APRO_RECH
		   
		   )
     VALUES
           (
		    @CIC
           ,@MONEDA
           ,@MONTO
           ,0
           ,@MONTO
           ,2
           ,@FECHA_FIN_COBRO
           ,@FLAG_DEBITO_CTA
           ,@CUENTA
           ,0
           ,''
           ,getdate()
           ,getdate()
           ,@GLOSAUTILIZAR
           ,@SERVICIO
           ,''
           ,''
           ,''
           ,0
           ,@FLAG_DEBITO_ABONO
           ,@LOTE
		   ,@USUARIO
		   ,''
		   ,getdate()
		   
		   )

END