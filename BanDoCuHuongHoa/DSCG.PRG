close all
set safe off
sele 2
use dscg
zap
sele 1
use tam
do while not eof()
 m_stt_id=stt_id
 m_tench=tench
 dem = 0
 m_dttc=0
 m_dtnn=0
 m_stt=0
 m_sogiay=0
 m_soto=space(1)
 m_sothua=space(1)
   do while stt_id=m_stt_id 
	 m_stt_id=stt_id 
	  if lrd='§Êt ë   '
	     m_dttc=dtich
	 else
	    m_dtnn=m_dtnn+dtich  
	  endif
	  if stt<>m_stt 
	     m_sogiay =m_sogiay +1
	     m_stt=stt
	  endif
	  if soto<>m_soto or sothua<>m_sothua
	    dem = dem +1
	    m_soto=soto
	    m_sothua=sothua
	  endif
     skip
    enddo
sele 2
  appe blan
  repl tench with m_tench,tongthua with dem,dttc with m_dttc,dtnn with m_dtnn,sogiay with m_sogiay
  sele 1
  endd
  sele 2
  repl all stt with recno()
 retu