hex
11 constant sndport
357 constant _C3
327 constant _C3S
327 constant _D3F
2F9 constant _D3
2CF constant _D3S
2CF constant _E3F
2A6 constant _E3
280 constant _F3
25C constant _F3S
25C constant _G3F
23A constant _G3
21A constant _G3S
21A constant _A3F
1FC constant _A3
1DF constant _A3S
1DF constant _B3F
1C4 constant _B3
1AB constant _C4
193 constant _C4S
193 constant _D4F
17C constant _D4
167 constant _D4S
167 constant _E4F
153 constant _E4
140 constant _F4
12E constant _F4S
12E constant _G4F
11D constant _G4
10D constant _G4S
10D constant _A4F
0FE constant _A4
0EF constant _A4S
0EF constant _B4F
0E2 constant _B4
0D5 constant _C5
0C9 constant _C5S
0C9 constant _D5F
0BE constant _D5
1 constant _SS
: snd0 DUP 0F and 80 or sndport out 10 / sndport out ;
: atn0 0F and 90 or sndport out ;
: quiet 9F sndport out BF sndport out DF sndport out FF sndport out ;

: note16 snd0 0 atn0 7D delay f atn0 3D delay ;
: note8 snd0 0 atn0 FA delay f atn0 BA delay ;
: note4 snd0 0 atn0 1F4 delay f atn0 1B4 delay ;
: note2 snd0 0 atn0 3E8 delay f atn0 3A8 delay ;

: pause16 7D delay 3D delay ;
: pause8 FA delay BA delay ;
: pause4 1F4 delay 1B4 delay ;

: mary _G4 NOTE8 _F4 NOTE8 _E4F NOTE8 _F4 NOTE8 _G4 NOTE8 _G4 NOTE8 _G4 NOTE8 PAUSE8
       _F4 NOTE8 _F4 NOTE8 _F4 NOTE4 _G4 NOTE8 _B4F NOTE8 _B4F NOTE4 _G4 NOTE8 
       _F4 NOTE8 _E4F NOTE8 _F4 NOTE8 _G4 NOTE8 _G4 NOTE8 _G4 NOTE8 _G4 NOTE8
       _F4 NOTE8 _F4 NOTE8 _G4 NOTE8 _F4 NOTE8 _E4F NOTE8 ;

: willtell _D3 NOTE16 _D3 NOTE16 _D3 NOTE16 PAUSE16 _D3 NOTE16 _D3 NOTE16 _D3 NOTE16 PAUSE16
           _D3 NOTE16 _D3 NOTE16 _G3 NOTE8 _A3 NOTE16 _B3 NOTE8 _D3 NOTE16 _D3 NOTE16
           _D3 NOTE16 PAUSE16 _D3 NOTE16 _D3 NOTE16 _D3 NOTE16 PAUSE16 _B3 NOTE16 _B3 NOTE16
           _A3 NOTE8 _G3F NOTE8 _D3 NOTE8 _D3 NOTE16 _D3 NOTE16 PAUSE16 _D3 NOTE16 _D3 NOTE16
           _D3 NOTE16 PAUSE16 _D3 NOTE16 _D3 NOTE16 _G3 NOTE8 _A3 NOTE8 _B3 NOTE8 PAUSE16
           _G3 NOTE16 _D4 NOTE4 PAUSE8 _G3 NOTE8 _B3 NOTE8 _G3 NOTE8 ; 

: america  _G4 NOTE8 _G4 NOTE4 _E4 NOTE8 _E4 NOTE8 _G4 NOTE8 _G4 NOTE4 _D4 NOTE8 _D4 NOTE8
           _E4 NOTE8 _F4 NOTE8 _G4 NOTE8 _A4 NOTE8 _B4 NOTE8 _G4 NOTE2 _G4 NOTE8 _G4 NOTE4
           _E4 NOTE8 _E4 NOTE8 _G4 NOTE8 _G4 NOTE4 _D4 NOTE8 _D4 NOTE8 _D4 NOTE8 _C4S NOTE8
           _D4 NOTE8 _E4 NOTE8 _A3 NOTE8 _D4 NOTE2 _G3 NOTE8 _E4 NOTE4 _E4 NOTE8 _D4 NOTE8
           _C4 NOTE8 _C4 NOTE4 _B3 NOTE8 _B3 NOTE8 _C4 NOTE8 _D4 NOTE8 _B3 NOTE8 _A3 NOTE8
           _G3 NOTE8 _C4 NOTE2 ;

: bootsound _D5F NOTE16 PAUSE8 _D4F NOTE16 _G4F NOTE16 _D4F NOTE16 _A4F NOTE16 ;

\ For "snd", 0x3FF is the lowest possible note. 10 KHz is approximately 0x0B
\ for "atn", 0 is highest volume, F is lowest volume

: test 32 0 do I sndport out loop ;