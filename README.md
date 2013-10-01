HanaFractal_SQLScript
=====================
This repository contains the SQLScript to generate fractal data in SAP HANA.

To use:

1. Create table using mandlebrotPoints.hdbtable
2. Create SQLScript procedures from fill_table_mandlebrotPoints.procedure and single_point.procedure.
3. Fill table with sample data by calling sql_fill_table.sql.
4. Monitor fill progress by calling sql_fill_table_progress_monitor.sql.

Note on shared constant for iteration count
-------------------------------------------
The SQLScript procedure single_point.procedure has a constant max_iteration currently = 1000.  This constant is also defined in (and needs to match) the client viewing the set.  This is because any point that reaches max_iteration is colored black.  If you look in repository HanaFractal_WindowsForms, the C# project FractalViewerWindows, class FractalViewer, method ConvertEscapedToColor() you will see the constant 1000 being used to color points black.

If the max_iterations value is changed in the SQLScript, it also needs to be changed in the C# client.