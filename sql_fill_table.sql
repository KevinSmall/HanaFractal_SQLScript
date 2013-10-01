-- This will fill table mandlebrotPoints.hdbtable with a view of the whole Mandlebrot set at resolution 200, which is approx 160,000 records.
-- It may take a few minutes to run, use sql_fill_table_progress_monitor.sql to monitor progress
-- The x coord runs (-1.5 .. 0.5) and the y coord runs (-1 .. 1).
call _SYS_BIC."workshop.sessiona.k00.dataMandle/fill_table_mandlebrotPoints"( 200, -300, 100, -200, 200, 1);
