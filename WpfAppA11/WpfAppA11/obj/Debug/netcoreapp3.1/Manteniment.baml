   M S B A M L   `   `   `  ????D  @WpfAppA11, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WpfAppA11	WpfAppA11  5   	       WpfAppA11.Manteniment   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WpfAppA11     5   	     ? Title$  Manteniment??5   	   $	??450??6   $	??800??6*   .??5	      ? $??10,10,10,10q?6    ? RowDefinitions 5
   
   ?? 5      $??1* ?6   ?? 5      $??8* ?6    ? ColumnDefinitions 5   
   ?? 5      $??* ?6   .+?5   
   ?? $??0??6   $??0??6"    ?? Orientation$ 
Horizontal=?62   $
??Left=?6K   .+?5      ?? $??Order ID??6   ?? 5      -   5        $??
txtOrderID??5      $	??150??6(   $??30??64   $??Center=?6@   $
??20,5q?6b   ?? 5      -   5        $??	btnCercar??5      $??Cercar??6&   $	??150??67   $??30??6C   6O   5      ?? 5   
   $??0??6   $??1??6"   $ 
Horizontal=?62   $??Right=?6K   .+?5      ?? -   5        $??	btnCommit??5      $??Commit??6&   $	??150??67   $??30??6C   6O   ?? 5      -   5        $??	btnCancel??5      $??Cancel??6&   $	??150??67   $??30??6C   6O   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $??dgOrders??5   D   $??1??6   $??0??6    $??2??60      AutoGenerateColumns$ False??6T      CanUserAddRows$ False??6p      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID Ordre??6%      
IsReadOnly$
 True??6S   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 67   ?? *	OrderID+6S     5       $ ID Producte??6%   $
 True??6X   	 6:   ?? *	ProductID+6X     5!      $ Preu Unitat??6%   	 6:   ?? *	UnitPrice+  5"      $ 	Quantitat??6%   	 68   ?? *
Quantity+  5#      $ 	Descompte??6%   	 68   ?? *
Discount+5%      5&      5'      