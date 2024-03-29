set defa to c:\ttgl
sele 1
use csdl alias csdl
SORT TO tamthoi.dbf ON Csdl.soto,Csdl.sothua,Csdl.thuaphu FIELDS Csdl.tench,Csdl.soto,Csdl.sothua,Csdl.thuaphu,Csdl.dtich,Csdl.lrd ,Csdl.dtsd &&,Csdl.sttld
do kiemtra
do gop
**********
proc kiemtra
close all
sele 5
use c:\hsbd\thongbao.dbf
zap
sele 1
   use tamthoi alias tg
    m_soto=soto
    m_thuaphu=thuaphu
    do while not eof() 
     m_sothua=0
      do while soto=m_soto 
        If sothua<5000
          If sothua-m_sothua>1
            for i=m_sothua+1 to sothua-1
              do bosungthua
            endfor
           else
              If  sothua-m_sothua=0
                  If thuaphu-m_thuaphu=0
                    i=thuaphu
           			   do bosungtp
          		   endif
                  If thuaphu-m_thuaphu>1
           			 for i=m_thuaphu+1 to thuaphu-1
           			   do bosungtp
           			 endfor
          		   endif
          	   else
          	       If thuaphu>1	
                      m_sothua=sothua
           			 for i=1 to thuaphu-1
           			   do bosungtp
           			 endfor
          		   endif
          	   endif	
          endif
        endif 			
          m_sothua=sothua
          m_thuaphu=thuaphu
         skip
       enddo
          m_soto=soto
     enddo

     sele 5
  		if recc()>0
 		   do c:\hsbd\thongbao.spr
 		 else
		    do c:\hsbd\tbx.spr
		  endif
	 sele 10	
		  SELECT tg.soto  FROM tg  GROUP BY tg.soto ORDER BY tg.soto  INTO CURSOR tam
           publ dime shbd(recc())
           shbd=""
             for i=1 to recc()
               shbd(i)=soto
               skip
             endf
retu
  *************
  procedure bosungthua
    sele 5
    appe blan
    repl soto with tg.soto,sothua with i
    sele 1
    retu
  *************
  procedure bosungtp
    sele 5
    appe blan
    repl soto with tg.soto,sothua with m_sothua,thuaphu with i
    sele 1
    retu
*****************************
proc  GOP
sele 1
   go top
    s=0
    m_sothua=0
    m_soto=soto
     dem=1
   scan
     if sothua<>m_sothua
          if dem>1
            inse befor blan
              repl sothua with m_sothua,soto with m_soto,dtich with s, thuaphu with -1
              skip
		    m_sothua=0
		     dem=1
           endif
           s=dtich
           m_sothua=sothua
           m_soto=soto
        else
       	 s=s+dtich
        	dem=dem+1
        endif
  endscan
SORT TO somucke.dbf ON tg.soto,tg.sothua,tg.thuaphu

