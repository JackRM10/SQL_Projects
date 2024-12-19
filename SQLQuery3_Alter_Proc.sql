USE [db_zooTEST2]
GO
/***** Objects: StoredProcedure [dbo].[getANIMAL_INFO] Script Date: 2/6/202 4:22:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[getAnimal_INFO]

@animalName VARCHAR(50)
AS
BEGIN
	DECLARE @errorString VARCHAR (100)