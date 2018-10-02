BEGIN TRY
begin tran
	PRINT 'Empezamos el script';
	
	--alter table ArbolCategorias add SEO_MOSAIC_SIZE varchar(80) null default 0
	
	--select * from Movies
	--update Movies set Rating = 3
	ALTER TABLE Movies DROP COLUMN Rating  
	
	select * from Movies
	
	--commit tran
	rollback tran
	select 'TODO PERFECTO'
	PRINT 'Todo perfecto';
END TRY
BEGIN CATCH

	SELECT 'Error: ', ERROR_NUMBER(), ERROR_MESSAGE()
    -- Execute error retrieval routine.
    select 'Se ha producido un error'
	PRINT 'Error';
	rollback tran
END CATCH; 