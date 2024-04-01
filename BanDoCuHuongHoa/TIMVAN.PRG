sele 1
use sdc
creat tabl c:\hsbd\van (van c(1))
use
sele 8
use c:\hsbd\van
m_kt=space(1)
 sele 1
  do while not eof()
    kt=substr(allt(tench),rat(space(1),allt(tench))+1,1)
      if  allt(kt) # m_kt
         m_kt=allt(kt)
         sele 8
         appe blan
		 repl van with kt
       endif
      sele 1
      skip
   enddo 
         sele 8
           publ dime van(recc())
           van=""
              i=1 
              scan
               van(i)=van
               i=i+1
             endscan
      sele 8
      brow 
             for i=1 to recc()
               ?van(i)
             endf
      retu
