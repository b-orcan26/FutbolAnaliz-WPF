   M S B A M L   `   `   `  ����I  EWpfAppExample1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfAppExample1WpfAppExample1  5   	   I)clr-namespace:WpfAppExample1.UserControlsWpfAppExample1.UserControls  5   	   E'clr-namespace:WpfAppExample1.ConvertersWpfAppExample1.Converters  5   	   E'clr-namespace:WpfAppExample1.ViewModelsWpfAppExample1.ViewModels  5	   	       WpfAppExample1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:WpfAppExample1     5   	   ;views)clr-namespace:WpfAppExample1.UserControls     5   	   >
converters'clr-namespace:WpfAppExample1.Converters     5   	   >
viewmodels'clr-namespace:WpfAppExample1.ViewModels     5	   	     � Title$  
MainWindow��5   	   $	��700��6   $
��1200��6)   $y�Visible=�66    � WindowStyle$
 None=�5   	   $��1q�5   	   
���   � � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 	Resources 5       �� DataType3  -WpfAppExample1.ViewModels.UcLigDetayViewModel,   &WpfAppExample1.UserControls.UcLigDetay5  /WpfAppExample1.ViewModels.UcTakimDetayViewModel.   (WpfAppExample1.UserControls.UcTakimDetay?   9WpfAppExample1.Converters.ByteArrayToBitmapImageConverter   ByteArrayToImageConverter<  6WpfAppExample1.Converters.BooleanToVisibilityConverter  BoolToVisibilityConverter��%�   (��       5      *, +)(�� 2     5      *, +)&	  d     &	 w     �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5        5   
   65     5   
   62   5      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6+   �� 5       $	��100 �6   6+   �� 5!      6    � ColumnDefinitions 5#   
   �� 5$      $
��auto �6   6.   �� 5%      6!   .+�5'   
   �� $��0��6   $��0��6   
���   �5)      �� 5*   
   $��0��6   $��1��6   
���   �._�5+      ]� .+�5,      �� $��
fansas.jpg��6   $
��Left=�6,   $��	150,0,0,0q�6G   6\   �� 5-      $��Center=�6   $��Futbol Analiz��63   
�������$��Italic$�6^   $
��Bold"�6q   $��30(�6�   6�   ]� 5.      $��Right=�6   .+�5/      �� -   5        $��__��5/      $��40��6*   $��0,1,5,10q�65   $
��Bold"�6G   6s   �� 50      -   5        $��x��50      $��40��6)   $��0,1,5,10q�64   6^   51      52      55      �� 56   
   $��1��6   $��0��6   $	��206��6.   $��0,0,0,0q�6<   $��2��6M   $	��Top=�6^   ._�57      �� $
��auto��6   $��Stretch=�6&   $��Stretch=�6B   $��	10,0,10,0q�6`   .+�58      �� -   5         ��Name$ 	myLigLogo��58      $	��130��6D   $	��100��6Q   $��	0,10,0,10q�6�   ��6]   �� *	MyImage+	 �� 	Converter#	 [  6�   �� 5<      -   5        
 ��Name$
 cbox_lig_liste��5<      ��63   �� *
LigListesi+ �� Mode$ TwoWay=� �� SelectedItem 6b   �� *MySelectedLigItem+��5=      �� 5>      .R�5?      �� ��6(   �� *lig_ad+5@      5B      5E      5F      �� 5G   
   $��1��6   $��1��6   $	��150��6.   $	��Top=�6<   $��2��6T   ._�5H      �� -   5        $ myTakimLogo��5H      $	��130��6�   $	��100��6�   $��Center=�6  $	��Top=�67  $��	0,10,0,10q�6O  y�6C   �� *MyTakimResimVisibility+#	 [ ��6�   �� *MyTakimResim+#	 [  5I      5J      �� 5K   
   $��2��6   $��0��6   $��0,50,0,0q�6.   ._�5L      �� $��0,32,0,0q�6   .+�5M      &   System.Windows.Controls.DataGrid  -   5          Name$ grid_puan_durumu��5M   X      
IsReadOnly .    SelectionMode$ Single=�6.   $��	10,20,0,0q�6E   $��Stretch=�6�      AutoGenerateColumns .  $	��350��6  $	��420��6  $��0q�6%     GridLinesVisibility$ Vertical=�69  ��6r   �� *PuanDurumuListe+$ TwoWay=� �� SelectedValue 6�   �� *MySelectedTakimItem+   Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5P      ,	  &System.Windows.Controls.DataGridColumn 	  Header$  ��6-   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 67   �� *sira+6R     5Q      $ Takım��6-    6<   �� *	takimAd+6Z     5R      $ O��6-    68   �� *oynadigi_mac+6[     5S      $ G��6-    68   �� *
g_sayisi+6W     5T      $ B��6-    68   �� *
b_sayisi+6W     5U      $ M��6-    68   �� *
m_sayisi+6W     5V      $ A��6-    68   �� *a_gol+6T     5W      $ Y��6-    68   �� *y_gol+6T     5X      $ AV��6-    69   �� *averaj+6V     5Y      $ P��6-    68   �� *puan+6S   5\      5]      5^      �� 5_   
   $��2��6   $��1��6   $��	0,50,0,50q�60   ._�5`      �� -   5         ��Name$ dynamicContent��5`      ��65   �� *CurrentViewModel+5b      5c      5d      5g      