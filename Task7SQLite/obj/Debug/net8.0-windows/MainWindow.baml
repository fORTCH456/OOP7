   M S B A M L   `   `   `  ����F  BTask7SQLite, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Task7SQLiteTask7SQLite  5   	       Task7SQLite.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Task7SQLite     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��505��5   	   $
��1800��5	   	     � WindowStyle$
  None=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency$
 True��5   	   $��Consolas)�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      �� 5      .+�5   
   �� $��3��6   $��UniformToFill=�5      $��/main_bg.webp��5      �� 5   
   $��18(�6   $��Center=�5      $��Center=�5      $��5q�5      $��0��5       $l��fПрактическая работа № 7 | Использование EntityFrameworkCore и SQLite��5!      
��� ���$
��Bold"�5#      �� 5%   
   -   5         ��Name$ BtnClose��5*      $��0 2 5 0q�5&      
��� ���$	��Top=�5(      $��Right=�5)         MaterialDesignIconButton#��[  5,      ��5%      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ CloseCircle=�5,      &   System.Windows.Controls.DataGrid  5.   
   -   5          Name$ 	ProductDG��5.      $��1��5/      $��5q�50         AutoGenerateColumns$ False��51      	   
IsReadOnly$
	 True��52      
   CanUserSortColumns$
 False��53      ���#FFF   RowBackground �#FFF   AlternatingRowBackground �#FFEEEE   GridLinesVisibility$ 
Horizontal=�57         ColumnHeaderHeight$ 50Q�58         CanUserAddRows$ False��59         CanUserDeleteRows$ False��5:         CanUserResizeRows$ False��5;         SelectionUnit$ FullRow=�5<         SelectionMode$ Single=�5=       # MaterialDesignElevationShadow16 J� Effect# [ 5>       � 	Resources 5?       �� Color��%  (��       5@   "   * SystemColors.HighlightBrushKey+)(�� %     5A   "   *1/SystemColors.InactiveSelectionHighlightBrushKey+)(�� J     5B   "   *SystemColors.ControlBrushKey+)�� 5@      $ LightYellow��6T   �� 5A      $ LightYellow��6e   �� 5B      $ White��6R   5C         Columns 5D      0  *System.Windows.Controls.DataGridTextColumn  5E      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6%      Header$	 №��5F   !      
Foreground
 � ���1  +System.Windows.Controls.DataGridBoundColumn   Binding 5G   !   �� *	ProductID+5H   !     5I      $
 Auto 6%   $# Название товара��5J   !   
 � ��� 5K   !   �� *ProductName+5L   !     5M      $
 Auto 6%   $# Описание товара��5N   !   
 � ��� 5O   !   �� *ProductDescription+5P   !     5Q      $
 Auto 6%   $ Цена товара��5R   !   
 � ��� 5S   !   �� *ProductPrice+5T   !     5U      $
 Auto 6%   $ Кол-во товара��5V   !   
 � ��� 5W   !   �� *ProductUnit+5X   !   4  .System.Windows.Controls.DataGridTemplateColumn  5Z      $+ %Редактировать товар��6)      CellTemplate 5[      �� 5\      .R�5]      �� -   5        
��� ���  MaterialDesignFlatButton#��[ 5_   !   .��5`   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5a   &   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	EventEdit=�6>   $��0 2 3 0q�5b   :   �� 5c   &   $ ��Редактировать��60   5d   #   5e      5f      5h        5j      $ Удалить товар��6)    5k      �� 5l      .R�5m      �� -   5        
��� ���#��[ 5o   !   .��5p   "   �� $ 
Horizontal=�6-   .+�5q   &     $ Remove=�6>   $��0 0 3 0q�5r   :   �� 5s   &   $��Удалить��60   5t   #   5u      5v      5x      5z      � 5|   
   $��2��6    � ColumnDefinitions 5}      �� 5~      �� 5      .+�5�      �� $��0��6   $��5q�5�      $��1q�5�      
��� ������	#20FF1493._�5�      �� $��5q�6   .+�5�      �� $,��&Добавить новый товар��6   $
��Bold"�5�      
��� ���$��Center=�5�      $��Center=�5�      $��5q�63   � 5�      -   5        $��NewProductGrid��5�       5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�       5�      �� 5�      �� 5�      .+�5�      �� $��0��6    $��0��5�      $#��Название товара��5�      
��� ���5�      �� 5�      $��0��6"   $��1��5�      
���   ����#FFF  �� TextWrapping$
  Wrap=�5�      ��5�      �� *ProductName+5�      �� 5�      $��1��6    $��0��5�      $#��Описание товара��5�      
��� ���5�      �� 5�      $��1��6"   $��1��5�      
���   ����#FFF$
  Wrap=�5�      ��5�      �� *ProductDescription+5�      �� 5�      $��2��6    $��0��5�      $��Цена товара��5�      
��� ���5�      �� 5�      $��2��6"   $��1��5�      
���   ����#FFF��5�      �� *ProductPrice+5�      �� 5�      $��3��6    $��0��5�      $��Кол-во товара��5�      
��� ���5�      �� 5�      $��3��6"   $��1��5�      
���   ����#FFF��5�      �� *ProductUnit+5�      �� 5�      -   5        $��4��5�   !   $��2��5�      $	��150��5�      $��5q�5�      $��Center=�5�      $��Center=�5�      
�������
��� ���
��� ���  MaterialDesignRaisedButton#��[ 5�      3	  -MaterialDesignThemes.Wpf.ButtonProgressAssist! 	  Value$! -1Q�5�      " 	  IsIndicatorVisible$
" True��5�      # 	  IsIndeterminate$
# True��5�      {�5�      �� *DataContext.ControlsEnabled+$ �� RelativeSource$ �� *FindAncestor+% �� AncestorType
% Window.��5�      �� $ 
Horizontal=�6)   .+�5�   "     $	 Add=�6:   $��0 2 3 0q�6E   �� 5�   "   $��Добавить��6,   5�      5�      5�      5�      5�      �� 5�      $��1��6   $��5q�5�      $��1q�5�      
��� ������	#20FF1493._�5�      �� $��5q�6   .+�5�      �� $+��%Редактировать товар��6   $
��Bold"�5�      $��Center=�5�      $��Center=�5�      $��5q�5�      
��� ���5�      � 5�      -   5        $��UpdateProductGrid��5�       5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�       5�      �� 5�      �� 5�      .+�5�      �� $��0��6    $��0��5�      $#��Название товара��5�      
��� ���5�      �� 5�      $��0��6"   $��1��5�      
���   ����#FFF$
  Wrap=�5     ��5�      �� *ProductName+5     �� 5     $��1��6    $��0��5     $#��Описание товара��5     
��� ���5     �� 5     $��1��6"   $��1��5	     
���   ����#FFF$
  Wrap=�5     ��5
     �� *ProductDescription+5     �� 5     $��2��6    $��0��5     $��Цена товара��5     
��� ���5     �� 5     $��2��6"   $��1��5     
���   ����#FFF��5     �� *ProductPrice+5     �� 5     $��3��6    $��0��5     $��Кол-во товара��5     
��� ���5     �� 5     $��3��6"   $��1��5     
���   ����#FFF��5     �� *ProductUnit+5!     �� 5#     -   5        $��4��5#  !   $��2��5$     $	��150��5%     $��5q�5'     $��Center=�5(     $��Center=�5)     
�������
��� ���
��� ���#��[ 5-     $! -1Q�5.     $
" True��5/     $
# True��50     {�51     �� *DataContext.ControlsEnabled+$ �� *FindAncestor+
% Window.��54     �� $ 
Horizontal=�6)   .+�55  "     $
 Edit=�6:   $��0 2 3 0q�6F   �� 56  "   $ ��Редактировать��6,   57     58     59     5:     5;     5<     5=     5>     