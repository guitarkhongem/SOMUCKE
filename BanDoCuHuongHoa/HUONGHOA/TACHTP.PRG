close all
sele 1
  use c:\trphong\csdl
  zap
sele 2  
tep= getfile()
use &tep alias tam
scan
 scat to array1
sele 1
 appe blan
 gath from array1
repl soth with tam.sothua 
sele 2
ends
*************
sele 1
 go top
  
   scan for occu('/',soth) <>0
      m_sothua=left(soth,at('/',soth)-1)
      m_thuaphu=substr(soth,at('/',soth)+1)
    repl sothua  with val(m_sothua),thuaphu with val(m_thuaphu)
   ends
 sele 2
   use
 sele 1   
    copy to &tep
 sele 2
    use &tep
   go top
 **********
scan for lrd="§Êt ë"
       m_soto=soto
       m_sothua=sothua
     skip 1  
    if soto=m_soto and sothua=m_sothua and lrd="V­ên    "
        m_dtich=dtich
     dele
   skip -1
       repl  dtich with (dtich + m_dtich)
    skip
     else
   skip -1
   endif 
 ends            
  pack
    