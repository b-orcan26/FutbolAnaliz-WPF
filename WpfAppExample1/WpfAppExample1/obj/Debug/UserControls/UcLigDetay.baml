   M S B A M L   `   `   `  ����I  EWpfAppExample1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:WpfAppExample1.UserControlsWpfAppExample1.UserControls  5      E'clr-namespace:WpfAppExample1.ConvertersWpfAppExample1.Converters  6F   ,    &WpfAppExample1.UserControls.UcLigDetay   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:WpfAppExample1.UserControls     5      =	Converter'clr-namespace:WpfAppExample1.Converters     6F     � 	Resources  5	      ?   9WpfAppExample1.Converters.ByteArrayToBitmapImageConverter   byteToImageConverter��%   &	          5
   
   6M   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   �� $��5q�6   
�������
�������$
��0.01q�6G   $��0��6^   $��0��6k    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         ShadowDepth$ 0Q�6#      
BlurRadius$ 10Q�63   ._�5      �� .+�5      �� $ ��Ligde Atılan Gol Sayısı��6   $��Center=�6:   $	��Top=�6W   $��20(�6o   $��
ExtraBlack"�6}   �� 5      $��Center=�66   $��Stretch=�6S   
�������$��30(�6�   ��6   �� *	ToplamGol+6�   5      ��5       �� 5!       �� 
TargetType" ��6   .�5"      ��  �� Property � �� �� Value �#e8ffc863   	 �� Triggers	 5#      P� 5$      
 P� Property
 �@J�IsMouseOver P� Value . . �5%      ��  �@J�Opacity$	 0.9Q�68   �� 5&       �@J�OpacityMask
 �����6<   5(      5*      5-      �� 5.   
   $��5q�6   
�������
�������$
��0.01q�6G   $��0��6^   $��1��6n    5/        50      $ 0Q�6#   66   ._�52      �� .+�53      �� $��En Çok Gol Atan Takim��6   $��20(�69   $
��Bold"�6G   $��Center=�6Z   �� 54      $	��100��6s   $	��100��6   $��Center=�6�   ��6   �� *EnGolcuTakim.takim_logo+ �� 	Converter# [  6�   �� 55      $��Center=�6B   ��6   �� *EnGolcuTakim.takim_ad+6B   56      ��57      �� 58      " ��6   .�59      ��  � �� �#e8ffc863   	 5:      P� 5;      
 �@J�IsMouseOver . . �5<      ��  �@J�Opacity$	 0.9Q�68   5?      5A      5D      �� 5E   
   $��2��6   $��0��6   $��5q�6.   
�������
�������$
��0.01q�6d    5F        5G      $ 0Q�6#   66   ._�5I      �� .+�5J      �� $'��!İç Sahada En Başarılı Takım��6   $��Center=�6>   $	��Top=�6[   $��20(�6s   $��
ExtraBlack"�6�   6�   �� 5K      $	��100��6|   $	��100��6�   $��Center=�6�   ��6   �� *" IcSahaEnBasariliTakim.takim_logo+# [  6�   �� 5L      $��Center=�6K   ��6   �� * IcSahaEnBasariliTakim.takim_ad+6K   5M      ��5N      �� 5O      " ��6   .�5P      ��  � �� �#e8ffc863   	 5Q      P� 5R      
 �@J�IsMouseOver . . �5S      ��  �@J�Opacity$	 0.9Q�68   5V      5X      5[      �� 5\   
   $��0��6   $��1��6   $��5q�6.   
�������
�������$
��0.01q�6d    5]        5^      $ 0Q�6#   66   ._�5`      �� .+�5a      �� $+��%Maç Başına Atılan Gol Ortalaması��6   $��Center=�6C   $	��Top=�6`   $��20(�6x   $��
ExtraBlack"�6�   6�   �� 5b      $��Center=�68   $��Center=�6U   
�������$��30(�6�   ��6   �� *OrtalamaGol+6�   5c      ��5d      �� 5e      " ��6   .�5f      ��  � �� �#e8ffc863   	 5g      P� 5h      
 �@J�IsMouseOver . . �5i      ��  �@J�Opacity$	 0.9Q�68   5l      5n      5q      �� 5r   
   $��1��6   $��1��6"   $��5q�6/   
�������
�������$
��0.01q�6e    5s        5t      $ 0Q�6#   66   ._�5v      �� .+�5w      �� $��En Az Gol Yiyen Takim��6   $
��Bold"�68   $��20(�6J   $��Center=�6X   �� 5x      $	��100��6u   $	��100��6�   $��Center=�6�   ��6   �� *EnAzYiyenTakim.takim_logo+# [  6�   �� 5y      $��Center=�6D   ��6   �� *EnAzYiyenTakim.takim_ad+6D   5z      ��5{      �� 5|      " ��6   .�5}      ��  � �� �#e8ffc863   	 5~      P� 5      
 �@J�IsMouseOver . . �5�      ��  �@J�Opacity$	 0.9Q�68   5�      5�      5�      �� 5�   
   $��2��6   $��1��6   $��5q�6.   
�������
�������$
��0.01q�6d    5�        5�      $ 0Q�6#   66   ._�5�      �� .+�5�      �� $(��"Dış Sahada En Başarılı Takım��6   $��Center=�6?   $	��Top=�6\   $��20(�6t   $��
ExtraBlack"�6�   6�   �� 5�      $	��100��6y   $	��100��6�   $��Center=�6�   ��6   �� *DepEnBasariliTakim.takim_logo+# [  6�   �� 5�      $��Center=�6H   ��6   �� *DepEnBasariliTakim.takim_ad+6H   5�      ��5�      �� 5�      " ��6   .�5�      ��  � �� �#e8ffc863   	 5�      P� 5�      
 �@J�IsMouseOver . . �5�      ��  �@J�Opacity$	 0.9Q�68   5�      5�      5�      5�      5�      