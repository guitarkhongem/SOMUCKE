clos all
m_xa="H≠Ìng PhÔng"
m_ngayky="10/10/2001"
x=3
x1=0.00
x0=17.00
ctich=2
m_sqd="418"
m_chutich="V‚ Xu©n Keng"
use c:\huonghoa\hphung\cm2001.dbf
do while not eof()
x0=x0+0.01
x1=x1+0.01
set devi to print
@x0+0.25,x1+43 say 'H≠Ìng Ho∏' font".VnCommercial Script",40
 @ x0+1.3,x1+28 say "Huy÷n : "  font".VnCommercial Script",25
  @ (x0+8.95),x1+41 say tench font".VnCommercial Script",40
 @(x0+10),x1+20 say "HÈ         :"  font".VnCommercial Script",25
  @(x0+10),x1+24 say ob  font".VnCommercial Script",25
 @(x0+13.8),x1+50 say tongdt  font".VnCommercial Script",28
If x=1 or x=2
 @ (x0+17.4) ,x1+35 say'Thﬁ tr n:'  font".VnCommercial Script",18
 @(x0+17.4),x1+45 say substr(m_xa,10)  font".VnCommercial Script",18
else
 @ (x0+17.4) ,x1+35 say'X∑:'  font".VnCommercial Script",18
 @(x0+17.4),x1+45 say m_xa  font".VnCommercial Script",18
endif
 @ (x0+18.9),x1+35 say  'Huy÷n:' font".VnCommercial Script",18
 @(x0+18.9) ,x1+45 say 'H≠Ìng Ho∏'  font".VnCommercial Script",18
 @(x0+20.3),x1+35 say'Tÿnh:' font".VnCommercial Script",20
@(x0+20.3),x1+45 say 'Qu∂ng Trﬁ'  font".VnCommercial Script",20
     luu=stt
      i= x0+29.1
        do while stt=luu and not eof()
          @ i, x1+10.5 say soto font ".vntime",10
          @i,x1+16.5 say sothua font".vntime",10
          @i,x1+24.1 say  dtich  font".vntime",10
          @i,x1+40 say  allt(lrd)  font ".vntime",10
          @ i,x1+49.7 say allt(thsd)  font".vntime",10
          i=i+1.4
       skip
      Enddo
    @ (x0+52 ),x1+57.5 say substr(m_ngayky,1,2)  font".vntime",10 style 'I'
    @ (x0+52 ),x1+67.5 say substr(m_ngayky,4,2)  font".vntime",10 style 'I'
    @ (x0+52 ),x1+75 say substr(m_ngayky,7,4)  font".vntime",10 style 'I'
    @(x0+53.9),x1+71.5 say'huy÷n' font".vntime",10 style 'B'
      if ctich=2
    @(x0+53.9),x1+53.3 say'KT/' font".vntime",10 style 'B'
    @(x0+55.4),x1+60.5 say' Ph„ chÒ tﬁch ' font".vntimeh",10 style 'B'
       endif
    @ x0+60.2,x1+30 say allt(m_sqd) + ' -Qß/UB' font".vntime",10
    @x0+62.9,x1+58.5 say m_chutich font".vntime",14 style 'BI'
              eject
        phim=inkey(0)
          if phim =27
    x2=recn()
save to c:\huonghoa\memo.mem 
          exit
          endif
  enddo
set devi to screen
retu
set devi to print
x0=30
x1=0.0
@x0+0.25,x1+43 say 'ß´ng hµ' font".VnCommercial Script",40
  eject
set devi to screen

retu



**************

clos all
m_xa="H≠Ìng PhÔng"
m_ngayky="10/10/2001"
x=1
ctich=2
m_sqd="418"
m_chutich="V‚ Xu©n Keng"
use c:\huonghoa\hphung\cm2001.dbf
*proce in1
do while not eof()
x1=0.00
x0=30.00
x1=x1+0.1
set devi to print
@x0+0.25,x1+43 say 'H≠Ìng Ho∏' font".VnCommercial Script",40
 @ x0+1.3,x1+28 say "Huy÷n : "  font".VnCommercial Script",25
  @ (x0+8.95),x1+41 say tench font".VnCommercial Script",40
 @(x0+10),x1+20 say "HÈ         :"  font".VnCommercial Script",25
  @(x0+10),x1+24 say ob  font".VnCommercial Script",25
 @(x0+13.8),x1+50 say tongdt  font".VnCommercial Script",28
If x=1 or x=2
 @ (x0+17.4) ,x1+35 say'Thﬁ tr n:'  font".VnCommercial Script",18
 @(x0+17.4),x1+45 say substr(m_xa,10)  font".VnCommercial Script",18
else
 @ (x0+17.4) ,x1+35 say'X∑:'  font".VnCommercial Script",18
 @(x0+17.4),x1+45 say m_xa  font".VnCommercial Script",18
endif
 @ (x0+18.9),x1+35 say  'Huy÷n:' font".VnCommercial Script",18
 @(x0+18.9) ,x1+45 say 'H≠Ìng Ho∏'  font".VnCommercial Script",18
 @(x0+20.3),x1+35 say'Tÿnh:' font".VnCommercial Script",20
@(x0+20.3),x1+45 say 'Qu∂ng Trﬁ'  font".VnCommercial Script",20
     luu=stt
      i= x0+29.1
        do while stt=luu and not eof()
          @ i, x1+10.5 say soto font ".vntime",10
          @i,x1+16.5 say sothua font".vntime",10
          @i,x1+24.1 say  dtich  font".vntime",10
          @i,x1+40 say  allt(lrd)  font ".vntime",10
          @ i,x1+49.7 say allt(thsd)  font".vntime",10
          i=i+1.4
       skip
      Enddo
    @ (x0+52 ),x1+57.5 say substr(m_ngayky,1,2)  font".vntime",10 style 'I'
    @ (x0+52 ),x1+67.5 say substr(m_ngayky,4,2)  font".vntime",10 style 'I'
    @ (x0+52 ),x1+75 say substr(m_ngayky,7,4)  font".vntime",10 style 'I'
    @(x0+53.9),x1+71.5 say'huy÷n' font".vntime",10 style 'B'
      if ctich=2
    @(x0+53.9),x1+53.3 say'KT/' font".vntime",10 style 'B'
    @(x0+55.4),x1+60.5 say' Ph„ chÒ tﬁch ' font".vntimeh",10 style 'B'
       endif
    @ x0+60.2,x1+30 say allt(m_sqd) + ' -Qß/UB' font".vntime",10
    @x0+62.9,x1+58.5 say m_chutich font".vntime",14 style 'BI'
              eject
        phim=inkey(0)
          if phim =27
    x2=recn()
save to c:\huonghoa\memo.mem 
          exit
          endif
  enddo
set devi to screen
