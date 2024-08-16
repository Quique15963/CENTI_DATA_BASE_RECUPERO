USE [BD_CENTINELA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO]')
			AND type IN (N'U')
		)
BEGIN

        IF NOT EXISTS (
            SELECT * 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
            AND COLUMN_NAME = 'FLAG_DEBITO_ABONO'
        )
        BEGIN
            ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO]
            ADD [FLAG_DEBITO_ABONO] [int] NULL;
        END

        IF NOT EXISTS (
            SELECT * 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
            AND COLUMN_NAME = 'LOTE'
        )
        BEGIN
            ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO]
            ADD [LOTE] nvarchar NULL;
        END

        IF NOT EXISTS (
            SELECT * 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
            AND COLUMN_NAME = 'USUARIO_REGISTRO'
        )
        BEGIN
            ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO]
            ADD [USUARIO_REGISTRO] nchar NULL;
        END

        IF NOT EXISTS (
            SELECT * 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
            AND COLUMN_NAME = 'USUARIO_APRO_RECH'
        )
        BEGIN
            ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO]
            ADD [USUARIO_APRO_RECH] nchar NULL;
        END

        IF NOT EXISTS (
            SELECT * 
            FROM INFORMATION_SCHEMA.COLUMNS 
            WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
            AND COLUMN_NAME = 'FECHA_APRO_RECH'
        )
        BEGIN
            ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO]
            ADD [FECHA_APRO_RECH] [datetime] NULL;
        END
END