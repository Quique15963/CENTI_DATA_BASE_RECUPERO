USE [RepExt]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- PROCEDIMIENTOS ALMACENADOS

IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[TBLCTAPAS_GetById]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'DROP PROCEDURE [cent].[TBLCTAPAS_GetById]'
END
GO
