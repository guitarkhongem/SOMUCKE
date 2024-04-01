set talk off
set date fren
set safe off
close all
clea
 m_tench=space(30) 
 m_tongdt=0
 m_sg=0
sele 3
use c:\hsbd\socgiay
zap
sele 4
SELECT Csdl.stt_id, Csdl.tench, Csdl.dtich,  Csdl.tongdt,Csdl.soto, Csdl.diachi, Csdl.sog, Csdl.sothua, Csdl.thuaphu, Csdl.ccpl    FROM Csdl;
 INTO TABLE c:\hsbd\socg.dbf
go top
 m_soto=0 &&space(1)
 m_sothua=0 &&space(1)
do while not eof()
           If  soto=m_soto and sothua=m_sothua	
     	        dele
          endif
        If  soto<>m_soto or sothua<>m_sothua
           m_soto=soto
           m_sothua=sothua
        endif     
   skip
 enddo  	
pack
go top

**********
m_stt_id=0
n=1
scan 
if  stt_id=m_stt_id
   m_stt_id=stt_id
  repl stt_id with n
else
  n=n+1
  m_stt_id=stt_id
  repl stt_id with n
endif
ends
*********
go top
 luu=stt_id
 do while not eof()
   l=1
   luu=stt_id
      m_tench=tench 
      m_tongdt=tongdt             
      m_sg=sog
      m_diachi=diachi
    do while stt_id=luu
         dime thua(l),to(l)
        thua(l)=sothua
        to(l)=soto
        l=l+1
        skip
    enddo
       thdat=''
       thdat1=''
       thdat2=''
       m_to=''
       m_thua=''
  for i=1 to l-1   
         if  to(i)=m_to                                                                  
             thdat=left(thdat,rat('(',thdat)-1)+','+thua(i)+'('+to(i)+')'                 
         else
              thdat=thdat+','+thua(i)+'('+to(i)+')'
         endif
           m_to=to(i)       
           m_thua=thua(i)
 endfor
    do while len(thdat) #0
    thdat1=left(thdat,34)
       if substr(thdat1,34,1)=',' .or. len(thdat1)<34
          thdat2=thdat2+thdat1+space(1)
          thdat=substr(thdat,35)
        else
           thdat2=thdat2+left( thdat1,rat(',', thdat1))+space(35-rat(',', thdat1))
           thdat=substr( thdat,rat(',', thdat1)+1) 
         endif 
       enddo 
         sele 3
         appe blank
           repl ccpl with socg.ccpl,tench with m_tench,cactd with substr(thdat2,2) ,tongdt with m_tongdt  ,tong with l-1,sg with m_sg,dc with left(allt(m_diachi),at(',',allt(m_diachi))-1)
          luu=luu+1                
    sele 4
     enddo
         close all
         use socgiay
repl all stt with recn()
*         brow font"svntimes new roman",12
   repo form so_cgiay prev
       use
      retu     
            **************
