USE [RepExt]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[cent].[TBLCTAPAS_GetById]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
BEGIN
	EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [cent].[TBLCTAPAS_GetById] AS'
END
GO

ALTER PROCEDURE [cent].[TBLCTAPAS_GetById] 
                                                                                                                                                                                                                  
       @CIC char(12),
	   @MONEDA char(3)
                                                                                                                                                                                                                                             
AS
                                                                                                                                                                                                                                                           
BEGIN
                                                                                                                                                                                                                                                        
       -- SET NOCOUNT ON added to prevent extra result sets from
                                                                                                                                                                                                   
       -- interfering with SELECT statements.
                                                                                                                                                                                                                      
    SET NOCOUNT ON;
    SELECT   CP_APLICATIVO
			,CP_NROCUENTA AS CUENTA
			,CP_MONEDA AS MONEDA
			,CP_CIC
			,0 AS AUTOM
			,CP_SLDACTUAL
	FROM Repxt.TBLCTAPAS
	WHERE CP_APLICATIVO IN ('AHO','CTE')
			AND CP_SITUACION IN ('00','01')
			AND CP_MONEDA IN ('068','840')
			AND CP_TIPCUENTA != '103' -- MANCOMUN. CO
			AND SUBSTRING(CP_NROCUENTA, 6, 3) + SUBSTRING(CP_NROCUENTA, 19, 8) IN (
			SELECT SUBSTRING(CL_OPERACION, 1, 3) + SUBSTRING(CL_OPERACION, 13, 8)
			FROM Repxt.TBLRCO
			WHERE SUBSTRING(CL_TIOAUX, 1, 3) IN ('AHO','CTE')
				AND CL_CIC = @CIC
			)
	                                                                                                                                                                                                                                              
END
