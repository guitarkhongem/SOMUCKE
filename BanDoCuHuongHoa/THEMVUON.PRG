use trphuoc\csdl
do while not eof()
    if lrd='§Êt ë   ' and dtich >200
       m_stt =stt
       m_soto=soto
       m_sothua=sothua
       m_dtich=dtich-200
       m_stt_id = stt_id
       m_tench=tench
       m_dtsd=dtsd
 repl tongdt  with dtich,dtich with 200,lrd with '§Êt ë   ',  thsd with 'L©u dµi   '      
  skip
  inse befo blan
repl tench with m_tench,stt_id with m_stt_id,stt  with m_stt  ,soto with m_soto,sothua with m_sothua,dtich with m_dtich,lrd with 'V§én',thsd with '10/2015',dtsd with m_dtsd&&,dvhc  with m_dvhc,ngayvs with m_ngayvs,diachi with m_diachi,tenvo with m_tenvo
endif
skip
enddo
retu