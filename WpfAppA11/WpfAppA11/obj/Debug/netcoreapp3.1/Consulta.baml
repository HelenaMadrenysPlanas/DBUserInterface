   M S B A M L   `   `   `  ????D  @WpfAppA11, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WpfAppA11	WpfAppA11  5   	       WpfAppA11.Consulta   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WpfAppA11     5   	     ? Title$  Consulta??5   	   $	??450??6   $	??800??6'   .??5	      ?  ? RowDefinitions 5
   
   ?? 5      $??1* ?6   ?? 5      $??8* ?6   .+?5   
   ?? $??0??6    ?? Orientation$ 
Horizontal=?6"   .+?5      ?? $??Empleat??6   $??20,10q?6&   ?? 5      -   5        $??
cbEmpleats??5      $??0??6)   $	??150??66   $??30??6B   $??Center=?6N   $
??Left=?6p   $
??20,5q?6?    ?? DisplayMemberPath$ LastName??5       ?? SelectedValuePath$ 
EmployeeID??60   6O   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $??dgOrders??5      $??1??6#   $??20,10q?60      AutoGenerateColumns$ False??6?      CanUserAddRows$ False??6[      CanUserDeleteRows$ False??6r      
IsReadOnly$
 True??6?   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Comanda??6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   ?? *	OrderID+  5      $

 Data??6%    63   ?? *	OrderDate+  5      $
 	Data Env.??6%    68   ?? *ShippedDate+  5      $
 Import??6%    65   ?? *	Freight+  5      $

 Pais??6%    63   ?? *ShipCountry+5      5      5      