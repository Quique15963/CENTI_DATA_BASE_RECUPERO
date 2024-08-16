

USE [BD_CENTINELA]
GO

-- PROCEDIMIENTOS ALMACENADOS
-- *********** N° 1
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_COBRO_MOD_ESTADO]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_COBRO_MOD_ESTADO]'
END
GO

-- *********** N° 2
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CUENTAS_COBRO_INSERT]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CUENTAS_COBRO_INSERT]'
END
GO

-- *********** N° 3
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_DEBITO_CUENTAS_DELETE]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_DEBITO_CUENTAS_DELETE]'
END
GO

-- *********** N° 4
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_INSERT]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_INSERT]'
END
GO

-- *********** N° 5
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_X_LOTE_DELETE]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_X_LOTE_DELETE]'
END
GO

-- *********** N° 6
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_DEBITO_CUENTAS_CTA_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_DEBITO_CUENTAS_CTA_GET]'
END
GO

-- *********** N° 7
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[Get_List_Cuentas_Debitado_ALS]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[Get_List_Cuentas_Debitado_ALS]'
END
GO

-- *********** N° 8
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[Get_List_Cuentas_Debitado_ALS_Mora]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[Get_List_Cuentas_Debitado_ALS_Mora]'
END
GO

-- *********** N° 9
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[Get_List_Cuentas_Debitado_TRJ]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[Get_List_Cuentas_Debitado_TRJ]'
END
GO

-- *********** N° 10
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[Get_List_Cuentas_Debitado_TRJ_Mora]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[Get_List_Cuentas_Debitado_TRJ_Mora]'
END
GO

-- *********** N° 11
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_DEBITO_CUENTAS_INSERT]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_DEBITO_CUENTAS_INSERT]'
END
GO

-- *********** N° 12
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_COBRO_X_CIC_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_COBRO_X_CIC_GET]'
END
GO

-- *********** N° 13
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[GET_LIST_CUENTAS_DEBITADO_CODEUDORES_ALS_TRJ]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[GET_LIST_CUENTAS_DEBITADO_CODEUDORES_ALS_TRJ]'
END
GO

-- *********** N° 14
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_MOD_ESTADO_UPDATE]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_MOD_ESTADO_UPDATE]'
END
GO

-- *********** N° 15
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_LOTE_X_FECHA_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_LOTE_X_FECHA_GET]'
END
GO

-- *********** N° 16
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_X_LOTE_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_X_LOTE_GET]'
END
GO

-- *********** N° 17
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_CLIENTE_COBRO_DETALLE_X_LOTE_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_CLIENTE_COBRO_DETALLE_X_LOTE_GET]'
END
GO

-- *********** N° 18
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_COBRO_GET]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_COBRO_GET]'
END
GO

-- *********** N° 19
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_DEBITO_CUENTAS_INSERT]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[AJUSTE_DEBITO_CUENTAS_INSERT]'
END
GO



-- VISTAS 

-- IF EXISTS (
-- 		SELECT *
-- 		FROM sys.objects
-- 		WHERE object_id = OBJECT_ID(N'[cent].[VIEW_EXT_TRANSACCIONES_COMISION]')
-- 			AND type IN (N'V')
-- 		)
-- BEGIN
-- 	EXEC dbo.sp_executesql @statement = N'DROP VIEW [cent].[VIEW_EXT_TRANSACCIONES_COMISION]'
-- END
-- GO

--TABLE

IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[AJUSTE_DEBITO_CUENTAS]')
			AND type IN (N'U')
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP TABLE [cent].[AJUSTE_DEBITO_CUENTAS]'
END

-- TABLE - COLUMAS

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
           WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
           AND COLUMN_NAME = 'FLAG_DEBITO_ABONO')
BEGIN
    ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO] DROP COLUMN [FLAG_DEBITO_ABONO];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
           WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
           AND COLUMN_NAME = 'LOTE')
BEGIN
    ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO] DROP COLUMN [LOTE];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
           WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
           AND COLUMN_NAME = 'USUARIO_REGISTRO')
BEGIN
    ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO] DROP COLUMN [USUARIO_REGISTRO];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
           WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
           AND COLUMN_NAME = 'USUARIO_APRO_RECH')
BEGIN
    ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO] DROP COLUMN [USUARIO_APRO_RECH];
END

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
           WHERE TABLE_NAME = 'AJUSTE_CLIENTE_COBRO' 
           AND COLUMN_NAME = 'FECHA_APRO_RECH')
BEGIN
    ALTER TABLE [cent].[AJUSTE_CLIENTE_COBRO] DROP COLUMN [FECHA_APRO_RECH];
END

--**