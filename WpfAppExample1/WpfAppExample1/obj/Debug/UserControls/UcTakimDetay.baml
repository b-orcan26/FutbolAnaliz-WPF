   M S B A M L   `   `   `  ����l  hSystem.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null�rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization  5      �{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  5      �{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  5      �rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization  5	      ��clr-namespace:System.Windows.Controls.DataVisualization.Charting.Primitives;assembly=System.Windows.Controls.DataVisualization.Toolkit=System.Windows.Controls.DataVisualization.Charting.Primitives  5
      I EWpfAppExample1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:WpfAppExample1.UserControlsWpfAppExample1.UserControls 5      .   (WpfAppExample1.UserControls.UcTakimDetay   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      �DVrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit     5      �DVC{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5      �charting{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5      �datavisrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit     5	      �chartingprimitives�clr-namespace:System.Windows.Controls.DataVisualization.Charting.Primitives;assembly=System.Windows.Controls.DataVisualization.Toolkit     5
      ;local)clr-namespace:WpfAppExample1.UserControls     5        � 	Resources  5         myDataPointStyleGreen �� 
TargetTypeF   @System.Windows.Controls.DataVisualization.Charting.LineDataPoint �� Property �� Value  myDataPointStyleRed  
myIntervalI   CSystem.Windows.Controls.DataVisualization.Charting.NumericAxisLabel  MyPieColorStyleB   <System.Windows.Controls.DataVisualization.Charting.PieSeriesL   FSystem.Windows.Controls.DataVisualization.ResourceDictionaryCollection  	MyPalette  Key��%  &	        &	 J     &	 �     &	 �     &	 %    �� 5   
   "  6.   .�5      ��  � ��
 �"�"�6+   5      �� 5   
   "  6,   .�5      ��  � ��
 �  ��6+   5      �� 5   
   "  6#   5      �� 5   
   "  6(   .�5      ��  � ��
 � � �6+   �� 5       � ��
 �  ��6+   5        5    
   �� 5!      �� 5"      DataPointStyle " ��6/   .�5#      ��  � ��
 � � �63   �� 5$       � ��
 �  ��63   5%      5'      5(      5-      .��5/      �  � RowDefinitions 50   
   �� 51      6   �� 52      6    � ColumnDefinitions 54   
   �� 55      6!   �� 56      6!   .+�59   
   �� $��5q�6   
�������
�������$
��0.01q�6G   $��0��6^   $��0��6k   $	��270��6|   $��2��6�   $	��Top=�6�    J� Effect 5:      3  -System.Windows.Media.Effects.DropShadowEffect  5;         ShadowDepth$ 0Q�6#      
BlurRadius$ 10Q�63   ._�5=      �� $��Stretch=�6   $��5q�67   .+�5>      �� -   5        	 ��Name$	 lbl_5mac��5>      $��Son 5 Maç Performansı��6*   $��SemiBold"�6J   $��0,0,0,2q�6`   
���   �6�   �� 5?      -   5        
 ��Name$
 lbox_son5mac��5?      $ �� IsSynchronizedWithCurrentItem$
 TrueY�6X   $��Stretch=�6}   $��Center=�6�   ��61   �� *Son5MacListesi+��5@      �� 5A      .R�5B      ]� $��Stretch=�6(   $��Center=�6F   .+�5E   "   �� $��Right=�6,   $	��120��6H   $��20��6T    �� TextAlignment$ Right=�6`   �� 5F   &   �6*   �� *
evSahibi+ �� 5G   &   $� ��6*    �� 5H   &   �6*   �� *	evms_sk+5I   #   �� 5J   "   $��50��6-   $��40��68   .+�5K   &   �� $	��Top=�60   $��Center=�6H   $��8(�6e   �� 5L   6   $
�iy :��6:    �� 5M   6   �6:   �� *	eviy_sk+ �� 5N   6   $�-��6:    �� 5O   6   �6:   �� *
depiy_sk+5P   '   �� 5Q   &   $��Center=�61    �� Padding$ 0,0,0,10q�6N   �� 5R   4   $�-��68   5S   '   5T   #   �� 5V   "   $
��Left=�6,   $	��100��6G   $��20��6S   �� 5W   &   �6*   �� *
depms_sk+ �� 5X   &   $� ��6*    �� 5Y   &   �6*   �� *	deplasman+5Z   #   5\      5^      5a      5b      ��5c      �� 5d      " ��6   .�5e      ��  � �� �#e8ffc863    �� Triggers 5f      P� 5g       P� Property �@J�IsMouseOver P� Value . . �5h      ��  �@J�Opacity$	 0.9Q�68   �� 5i       �@J�OpacityMask
 �����6<   5k      5m      5p      �� 5r   
   $��5,66,5,5q�6   
�������
�������$
��0.01q�6N   $��1��6e   $��0��6r    5s        5t      $ 0Q�6#   $ 10Q�63   ._�5w      �� $��5q�6   $��Center=�6$   .+�5x      �� $��Bottom=�6   $��İç Saha Performansı��63   $��SemiBold"�6Q   $��Stretch=�6g   $��0,0,0,2q�6�   
���   �6�   &   System.Windows.Controls.DataGrid  5y      $��Bottom=�6   $��Center=�66      
IsReadOnly .    SelectionMode$ Single=�6m      AutoGenerateColumns .  $��0q�6     GridLinesVisibility$ Vertical=�6  ��6�   �� *IcSahaPerformansi+ �� Mode$ TwoWay=� �� SelectedValue 6�   �� *MySelectedTakimItem+   Columns 5z      0  *System.Windows.Controls.DataGridTextColumn  5|      ,  &System.Windows.Controls.DataGridColumn   Header$ O��6-   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 68   �� *OynadigiMacSayisi+6`     5}      $ G��6-    68   �� *GalibiyetSayisi+6^     5~      $ B��6-    68   �� *BeraberlikSayisi+6_     5      $ M��6-    68   �� *MaglubiyetSayisi+6_     5�      $ A��6-    68   �� *	AttigiGol+6X     5�      $ Y��6-    68   �� *	YedigiGol+6X   5�      �� 5�      $��Bottom=�6   $��Dış Saha Performansı��63   $��SemiBold"�6S   $��0,0,0,2q�6i   
���   �$��Stretch=�6�     5�      $��Bottom=�6   $��Stretch=�66   $��Center=�6[    . $ Single=�6�    .  $��0q�6)  $ Vertical=�6=  ��6�   �� *DisSahaPerformansi+$ TwoWay=� 6�   �� *MySelectedTakimItem+ 5�        5�      $ O��6-    68   �� *OynadigiMacSayisi+6`     5�      $ G��6-    68   �� *GalibiyetSayisi+6^     5�      $ B��6-    68   �� *BeraberlikSayisi+6_     5�      $ M��6-    68   �� *MaglubiyetSayisi+6_     5�      $ A��6-    68   �� *	AttigiGol+6X     5�      $ Y��6-    68   �� *	YedigiGol+6X   5�      5�      ��5�      �� 5�      " ��6   .�5�      ��  � �� �#e8ffc863    5�      P� 5�       �@J�IsMouseOver . . �5�      ��  �@J�Opacity$	 0.9Q�68   �� 5�       �@J�OpacityMask
 ����6<   5�      5�      5�      �� 5�   
   $��0��6   $��1��6   
�������
�������$
��0.01q�6Y   $��2��6p   $	��Top=�6�   $��5,5,5,0q�6�   $	��270��6�    5�        5�      $ 0Q�6#   $ 10Q�63   ._�5�      �� $��5q�6   $��Stretch=�6$   .+�5�      �� $��Gol Performansı��6   $��SemiBold"�62   �� 5�      -   5         ��Name$ GolTabs��5�      .@�5�      �� $��Genel��6   .��5�      >
   8System.Windows.Controls.DataVisualization.Charting.Chart
   � DataContext 6)   �� *ChartDataSource+��5�      �� 5�   "    �� 
TargetType" 
 62   .R�5�   &   �� $��0q�6-    �� Padding$ 2q�68   #��z��6D   #��z��6n   ._�5�   *   � $	��200��6/    5�   .   �� 5�   2   $
��Auto �6@   �� 5�   2   $��* �6@   �� 5�   2   $
��Auto �6@   .+�5�   .   5   /System.Windows.Controls.DataVisualization.Title   
  Title#��z 6<    
  
TitleStyle#��z 6^   M   GSystem.Windows.Controls.DataVisualization.Charting.Primitives.EdgePanel  5�   .   $��	ChartArea��6K     
  ChartAreaStyle#��z  6\   $��1��6�   .+�5�   2   � ! K� ZIndex$! -1��67   " 
  PlotAreaStyle#��z" 6I   �� 5�   2   $! 10��69   ���	#FF919191$��1q�6c   5�   /   �� 5�   .   $��0��65   ._�5�   2   �� $��
Gol Sayisi��68   $��10(�6M   $
��Bold"�6[   5�   /   �� 5�   .   $��2��65   ._�5�   2   ]� .+�5�   6   �� $��10��6<   $��11��6G   
���"�"�$�� ��6l   $��Center=�6w   �� 5�   6   $��: Attıgı Gol��6<   $��11(�6S   �� 5�   6   $��10��6<   $��11��6G   
���  ��$�� ��6d   $��Center=�6o   $��10,0,0,0q�6�   �� 5�   6   $��: Yedigi Gol��6<   $��11(�6S   �� 5�   6   $��Hafta��6<   $��Right=�6L   $��10(�6h   $
��Bold"�6v   5�   3   5�   /   5�   +   5�   '   5�   #   # 
  Series# 5�   "   C   =System.Windows.Controls.DataVisualization.Charting.LineSeries  H   BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries$   IndependentValuePath$	$ Key��5�   .   %   DependentValuePath$% Value��5�   .   &   IsSelectionEnabled& . '   DataPointStyle#' [  5�   .   (   ItemsSource( 5�   6   �� *[0]+5�   #     5�   "   $	$ Key��5�   .   $% Value��5�   .   & . #' [ 5�   .   ( 5�   6   �� *[1]+5�   #   5�      5�      �� 5�      $��
İy Goller��6   .��5�      
   6)   �� *ChartDataSourceIy+��5�      �� 5  "   " 
 62   .R�5  &   �� $��0q�6-   $ 2q�68   #��z��6D   #��z��6n   ._�5  *   � $	��200��6/    5  .   �� 5	  2   $
��Auto �6@   �� 5
  2   $��* �6@   �� 5  2   $
��Auto �6@   .+�5  .     #��z 6<   #��z 6^     5  .   $��	ChartArea��6K   #��z  6\   $��1��6�   .+�5  2   � $! -1��67   #��z" 6I   �� 5  2   $! 10��69   ���	#FF919191$��1q�6c   5  /   �� 5  .   $��0��65   ._�5  2   �� $��
Gol Sayisi��68   $��10(�6M   $
��Bold"�6[   5  /   �� 5  .   $��2��65   ._�5  2   ]� .+�5  6   �� $��10��6<   $��11��6G   
���"�"�$�� ��6l   $��Center=�6w   �� 5  6   $ ��: İlk Yarida Attıgı Gol��6<   $��11(�6^   �� 5  6   $��10��6<   $��11��6G   
���  ��$�� ��6d   $��Center=�6o   $��10,0,0,0q�6�   �� 5  6   $��: İlk Yarida Yedigi Gol��6<   $��11(�6^   �� 5   6   $��Hafta��6<   $��Right=�6L   $��10(�6h   $
��Bold"�6v   5!  3   5$  /   5&  +   5'  '   5(  #   # 5.  "     $	$ Key��5/  .   $% Value��50  .   & . #' [  52  .   ( 5.  6   �� *[0]+56  #     57  "   $	$ Key��58  .   $% Value��59  .   & . #' [ 5;  .   ( 57  6   �� *[1]+5?  #   5E     5F     �� 5G     $��
Toplam Gol��6   .��5H     
  ��5M     �� 5Q  "   " 
 62   .R�5T  &   �� $��0q�6-   $ 2q�68   #��z��6D   #��z��6n   ._�5U  *   � $	��200��6/    5V  .   �� 5W  2   $
��Auto �6@   �� 5X  2   $��* �6@   �� 5Y  2   $
��Auto �6@   .+�5[  .     #��z 6<   #��z 6^     5]  .   $��	ChartArea��6K   #��z  6\   $��1��6�   .+�5_  2   � $! -1��67   #��z" 6I   �� 5a  2   $! 10��69   ���	#FF919191$��1q�6c   5c  /   �� 5e  .   $��0��65   ._�5f  2   �� $��
Gol Sayisi��68   $��10(�6M   $
��Bold"�6[   5g  /   �� 5h  .   $��2��65   ._�5i  2   �� $��Hafta��68   $��Right=�6H   $��10(�6d   $
��Bold"�6r   5j  /   5l  +   5m  '   5n  #   # 5t  "     $	$ Key��5u  .   $% Value��5v  .   & . ( 5t  6   �� *MaclarindakiToplamGol+�   �System.Windows.Controls.DataVisualization.Charting.LineAreaBaseSeries`1[[System.Windows.Controls.DataVisualization.Charting.LineDataPoint, System.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null]])   DependentRangeAxis) 5{  &   C   =System.Windows.Controls.DataVisualization.Charting.LinearAxis  5|  *   =   7System.Windows.Controls.DataVisualization.Charting.Axis*   Orientation$* Y=�6>   +   Interval�   �System.Windows.Controls.DataVisualization.Charting.NullableConverter`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]$+ 1 5}  .   D   >System.Windows.Controls.DataVisualization.Charting.DisplayAxis,   ShowGridLines, . 5  .   5�  #   5�     5�     5�     5�     ��5�     �� 5�     " ��6   .�5�     ��  � �� �#e8ffc863    5�     P� 5�      �@J�IsMouseOver . . �5�     ��  �@J�Opacity$	 0.9Q�68   �� 5�      �@J�OpacityMask
 ����6<   5�     5�     5�     �� 5�  
   $��5,66,5,5q�6   
�������
�������$
��0.01q�6N   $��2��6e   $��1��6r    5�       5�     $ 0Q�6#   $ 10Q�63   ._�5�     ]� $��5q�6   $��Center=�6#   .+�5�     �� - �� TabStripPlacement$
- Left=�6   .@�5�     �� $��A/U
1.5��6   .��5�     �� .+�5�     
  $
��Left=�6-   $	��354��6H   . 
  Palette. 5�  &       
Background/ �� Color  DataPointStyle�� 5�  *   %�   &	       &	 !     7  �� 5�  .   $	/ Red��5�  1   �� 5�  .   " ��5�  1   .�5�  2   ��  � ��8   5�  1   5�  /   5�  +   �� 5�  *   %�   &	       &	 #     7  �� 5�  .   $/ Green��5�  .   �� 5�  .   " ��5�  1   .�5�  2   ��  � ��8   5�  -   5�  /   5�  +   5�  '   ��5�  "   �� 5�  &   " 
 6,   .�5�  *   ��  � �� 5�  .   �� 5�  2   " 
 6B   .R�5�  6   �� $��0q�6=   $ 0q�6H   #��z��6T   #��z��6~   #��z��6�   ._�5�  :   � $	��130��6?   $��Center=�6L   $
��Left=�6g   $��0q�6�    5�  >   �� 5�  B   $
��Auto �6P   �� 5�  B   $��* �6P   .+�5�  >     #��z 6L   #��z 6n   � 5�  >   $��1��6C    5�  B   �� 5�  F   $��* �6W   �� 5�  F   $
��Auto �6W   .+�5�  B   ]� $
��auto��6L   .+�5�  F     0  Name$0 	ChartArea��6c   #��z  6v   $��0q�6�   $	��235��6�   $��Stretch=�6�   .+�5�  J   � $! -1��6O   #��z" 6b   
�������6�   5�  G   6   0System.Windows.Controls.DataVisualization.Legend  5�  F   1  Name$1 Legend��6U   $��80��6e   $	��Top=�6r   $��Right=�6�   
������ $��1q�6�   $��1��6�   5�  C   5�  ?   5�  ;   5�  7   5�  3   5�  +   5�  '   # 5�  &     $��	0,-18,0,0q�5�  E   $	��235��6X   ( 5�  4   �� *LoadPieChartDataBirBucukAu+2   IndependentValueBinding2 5�     �� 3 �� Path$	3 Key�4   DependentValueBinding4 5�     �� $3 Value�5�  '   5     5     5
     �� 5     $��A/U
2.5��6   .��5     �� .+�5     
  $
��Left=�6-   $	��354��6H   . 5  &     �� 5  *   %�   &	       &	 !     7  �� 5  .   $	/ Red��5  1   �� 5  .   " ��5  1   .�5  2   ��  � ��8   5  1   5  /   5  +   �� 5  *   %�   &	       &	 #     7  �� 5  .   $/ Green��5  .   �� 5   .   " ��5"  1   .�5#  2   ��  � ��8   5%  -   5&  /   5(  +   5*  '   ��50  "   �� 51  &   " 
 6,   .�52  *   ��  � �� 53  .   �� 54  2   " 
 6B   .R�55  6   �� $��0q�6=   $ 0q�6H   #��z��6T   #��z��6~   #��z��6�   ._�56  :   � $	��130��6?   $��Center=�6L   $
��Left=�6g   $��0q�6�    57  >   �� 58  B   $
��Auto �6P   �� 59  B   $��* �6P   .+�5<  >     #��z 6L   #��z 6n   � 5?  >   $��1��6C    5@  B   �� 5A  F   $��* �6W   �� 5B  F   $
��Auto �6W   .+�5D  B   ]� $
��auto��6L   .+�5F  F     $0 	ChartArea��6c   #��z  6v   $��0q�6�   $	��235��6�   $��Stretch=�6�   .+�5G  J   � $! -1��6O   #��z" 6b   
�������6�   5I  G     5J  F   $1 Legend��6U   $��80��6e   $	��Top=�6r   $��Right=�6�   
������ $��1q�6�   $��1��6�   5K  C   5M  ?   5N  ;   5O  7   5P  3   5R  +   5S  '   # 5X  &     $��	0,-18,0,0q�5Z  E   $	��235��6X   ( 5X  4   �� *LoadPieChartDataIkıBucukAu+2 5Y     �� $	3 Key�4 5Z     �� $3 Value�6X   5_     5a     5b     �� 5c     $��A/U
3.5��6   .��5d     �� .+�5e     
  $
��Left=�6-   $	��354��6H   . 5g  &     �� 5h  *   %�   &	       &	 !     7  �� 5i  .   $	/ Red��5k  1   �� 5l  .   " ��5n  1   .�5o  2   ��  � ��8   5q  1   5r  /   5s  +   �� 5t  *   %�   &	       &	 #     7  �� 5u  .   $/ Green��5w  .   �� 5x  .   " ��5z  1   .�5{  2   ��  � ��8   5}  -   5~  /   5�  +   5�  '   ��5�  "   �� 5�  &   " 
 6,   .�5�  *   ��  � �� 5�  .   �� 5�  2   " 
 6B   .R�5�  6   �� $��0q�6=   $ 0q�6H   #��z��6T   #��z��6~   #��z��6�   ._�5�  :   � $	��130��6?   $��Center=�6L   $
��Left=�6g   $��0q�6�    5�  >   �� 5�  B   $
��Auto �6P   �� 5�  B   $��* �6P   .+�5�  >     #��z 6L   #��z 6n   � 5�  >   $��1��6C    5�  B   �� 5�  F   $��* �6W   �� 5�  F   $
��Auto �6W   .+�5�  B   ]� $
��auto��6L   .+�5�  F     $0 	ChartArea��6c   #��z  6v   $��0q�6�   $	��235��6�   $��Stretch=�6�   .+�5�  J   � $! -1��6O   #��z" 6b   
�������6�   5�  G     5�  F   $1 Legend��6U   $��80��6e   $	��Top=�6r   $��Right=�6�   
������ $��1q�6�   $��1��6�   5�  C   5�  ?   5�  ;   5�  7   5�  3   5�  +   5�  '   # 5�  &     $��	0,-18,0,0q�5�  E   $	��235��6X   ( 5�  4   �� *LoadPieChartDataUcBucukAu+2 5�     �� $	3 Key�4 5�     �� $3 Value�6X   5�     5�     5�     5�     5�     ��5�     �� 5�     " ��6   .�5�     ��  � �� �#e8ffc863    5�     P� 5�      �@J�IsMouseOver . . �5�     ��  �@J�Opacity$	 0.9Q�68   �� 5�      �@J�OpacityMask
 ����6<   5�     5�     5�     5�     5�     