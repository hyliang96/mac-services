FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	��	tell application "System Events"		set app_name to name of (first application process where it is frontmost)		# display dialog app_name		if app_name starts with "Adobe" then			tell (first application process where it is frontmost) to tell first window				set the value of attribute "AXMinimized" to true			end tell		else			keystroke "m" using {command down}		end if	end tell
	    
 �    	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 s e t   a p p _ n a m e   t o   n a m e   o f   ( f i r s t   a p p l i c a t i o n   p r o c e s s   w h e r e   i t   i s   f r o n t m o s t )  	 	 #   d i s p l a y   d i a l o g   a p p _ n a m e  	 	 i f   a p p _ n a m e   s t a r t s   w i t h   " A d o b e "   t h e n  	 	 	 t e l l   ( f i r s t   a p p l i c a t i o n   p r o c e s s   w h e r e   i t   i s   f r o n t m o s t )   t o   t e l l   f i r s t   w i n d o w  	 	 	 	 s e t   t h e   v a l u e   o f   a t t r i b u t e   " A X M i n i m i z e d "   t o   t r u e  	 	 	 e n d   t e l l  	 	 e l s e  	 	 	 k e y s t r o k e   " m "   u s i n g   { c o m m a n d   d o w n }  	 	 e n d   i f  	 e n d   t e l l 
 	      l     ��������  ��  ��        l    � ����  O     �    k    �       r        m    ��
�� boovfals  o      ���� 0 
fullscreen 
FullScreen      r        l    ����  6       4   �� 
�� 
prcs  m   
 ����   =      !   1    ��
�� 
pisf ! m    ��
�� boovtrue��  ��    o      ���� 0 this_process     " # " l   ��������  ��  ��   #  $ % $ O    T & ' & l   S ( ) * ( k    S + +  , - , r    + . / . l   ) 0���� 0 6   ) 1 2 1 4    �� 3
�� 
cwin 3 m    ����  2 =  ! ( 4 5 4 1   " $��
�� 
sbrl 5 m   % ' 6 6 � 7 7   A X S t a n d a r d W i n d o w��  ��   / o      ���� 0 this_window   -  8 9 8 r   , 1 : ; : n   , / < = < 1   - /��
�� 
titl = o   , -���� 0 this_window   ; o      ���� 0 
this_title   9  >�� > O   2 S ? @ ? k   6 R A A  B C B l  6 6�� D E��   D #  get attribute "AXFullScreen"    E � F F :   g e t   a t t r i b u t e   " A X F u l l S c r e e n " C  G H G l   6 6�� I J��   I � �			if value of attribute "AXFullScreen" then				set value of attribute "AXFullScreen" to false			else				set value of attribute "AXFullScreen" to true			end if
			    J � K KP  	 	 	 i f   v a l u e   o f   a t t r i b u t e   " A X F u l l S c r e e n "   t h e n  	 	 	 	 s e t   v a l u e   o f   a t t r i b u t e   " A X F u l l S c r e e n "   t o   f a l s e  	 	 	 e l s e  	 	 	 	 s e t   v a l u e   o f   a t t r i b u t e   " A X F u l l S c r e e n "   t o   t r u e  	 	 	 e n d   i f 
 	 	 	 H  L M L l  6 6��������  ��  ��   M  N O N Z   6 P P Q���� P n   6 = R S R 1   : <��
�� 
valL S 4   6 :�� T
�� 
attr T m   8 9 U U � V V  A X F u l l S c r e e n Q k   @ L W W  X Y X r   @ C Z [ Z m   @ A��
�� boovtrue [ o      ���� 0 
fullscreen 
FullScreen Y  \�� \ r   D L ] ^ ] m   D E��
�� boovfals ^ n       _ ` _ 1   I K��
�� 
valL ` 4   E I�� a
�� 
attr a m   G H b b � c c  A X F u l l S c r e e n��  ��  ��   O  d e d l  Q Q��������  ��  ��   e  f g f l  Q Q��������  ��  ��   g  h i h l  Q Q�� j k��   j   get subrole of buttons    k � l l .   g e t   s u b r o l e   o f   b u t t o n s i  m n m l  Q Q�� o p��   o A ; click (first button whose subrole is "AXFullScreenButton")    p � q q v   c l i c k   ( f i r s t   b u t t o n   w h o s e   s u b r o l e   i s   " A X F u l l S c r e e n B u t t o n " ) n  r s r l  Q Q�� t u��   t @ : tell (first button whose subrole is "AXFullScreenButton")    u � v v t   t e l l   ( f i r s t   b u t t o n   w h o s e   s u b r o l e   i s   " A X F u l l S c r e e n B u t t o n " ) s  w x w l  Q Q�� y z��   y   get actions    z � { {    g e t   a c t i o n s x  | } | l  Q Q�� ~ ��   ~ #  perform action "AXPress"				     � � � :   p e r f o r m   a c t i o n   " A X P r e s s " 	 	 	 	 }  � � � l  Q Q�� � ���   � "  perform action "AXShowMenu"    � � � � 8   p e r f o r m   a c t i o n   " A X S h o w M e n u " �  � � � l  Q Q�� � ���   � $  perform action "AXZoomWindow"    � � � � <   p e r f o r m   a c t i o n   " A X Z o o m W i n d o w " �  ��� � l  Q Q�� � ���   �  	 end tell    � � � �    e n d   t e l l��   @ o   2 3���� 0 this_window  ��   )   get subrole of windows    * � � � .   g e t   s u b r o l e   o f   w i n d o w s ' o    ���� 0 this_process   %  � � � I  U j�� � �
�� .prcskprsnull���     ctxt � 1   U X��
�� 
tab  � �� ���
�� 
faal � J   [ f � �  � � � m   [ ^��
�� eMdsKopt �  � � � m   ^ a��
�� eMdsKsft �  ��� � m   a d��
�� eMdsKctl��  ��   �  � � � I  k p�� ���
�� .sysodelanull��� ��� nmbr � m   k l���� ��   �  � � � l  q q�� � ���   �   if FullScreen then    � � � � &   i f   F u l l S c r e e n   t h e n �  � � � O   q � � � � k   u � � �  � � � r   u z � � � m   u v��
�� boovtrue � 1   v y��
�� 
pisf �  � � � e   { � � � n   { � � � � 1   ~ ���
�� 
titl � 2  { ~��
�� 
cwin �  � � � l  � ��� � ���   � K E perform action "AXRaise" of (first window whose title is this_title)    � � � � �   p e r f o r m   a c t i o n   " A X R a i s e "   o f   ( f i r s t   w i n d o w   w h o s e   t i t l e   i s   t h i s _ t i t l e ) �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � N H if windows is not {} then perform action "AXRaise" of item 1 of windows    � � � � �   i f   w i n d o w s   i s   n o t   { }   t h e n   p e r f o r m   a c t i o n   " A X R a i s e "   o f   i t e m   1   o f   w i n d o w s �  � � � l  � ��� � ���   �   get name of this_process    � � � � 2   g e t   n a m e   o f   t h i s _ p r o c e s s �  � � � l  � ��� � ���   � 7 1				set value of attribute "AXFullScreen" to true    � � � � b 	 	 	 	 s e t   v a l u e   o f   a t t r i b u t e   " A X F u l l S c r e e n "   t o   t r u e �  ��� � l  � ��� � ���   �  	 end tell    � � � �    e n d   t e l l��   � o   q r���� 0 this_process   �  ��� � l  � ��� � ���   �   end if    � � � �    e n d   i f��    m      � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l      �� � ���   �   Your script goes here     � � � � .   Y o u r   s c r i p t   g o e s   h e r e   �  � � � l     ��������  ��  ��   �  ��� � l      �� � ���   � � �tell application "System Events"	perform action "AXZoomWindow" of (first button whose subrole is "AXFullScreenButton") of (first window whose subrole is "AXStandardWindow") of (first process whose frontmost is true)end tell
    � � � ��  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 p e r f o r m   a c t i o n   " A X Z o o m W i n d o w "   o f   ( f i r s t   b u t t o n   w h o s e   s u b r o l e   i s   " A X F u l l S c r e e n B u t t o n " )   o f   ( f i r s t   w i n d o w   w h o s e   s u b r o l e   i s   " A X S t a n d a r d W i n d o w " )   o f   ( f i r s t   p r o c e s s   w h o s e   f r o n t m o s t   i s   t r u e )  e n d   t e l l 
��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   �   �  ����� ��������� 6�������� U�� b���������������� 0 
fullscreen 
FullScreen
�� 
prcs �  
�� 
pisf�� 0 this_process  
�� 
cwin
�� 
sbrl�� 0 this_window  
�� 
titl�� 0 
this_title  
�� 
attr
�� 
valL
�� 
tab 
�� 
faal
�� eMdsKopt
�� eMdsKsft
�� eMdsKctl
�� .prcskprsnull���     ctxt
�� .sysodelanull��� ��� nmbr�� �� �fE�O*�k/�[�,\Ze81E�O� 9*�k/�[�,\Z�81E�O��,E�O� *��/�,E eE�Of*��/�,FY hOPUUO_ a a a a mvl Olj O� e*�,FO*�-�,EOPUOPUascr  ��ޭ