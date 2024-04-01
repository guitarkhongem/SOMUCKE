close all
set safe off
dime dtsd(6)
dtsd(1)='Hé Gia ®×nh,C¸ thÓ'
dtsd(2)='C¸c tæ chøc kinh tÕ'
dtsd(3)='UBND x·'
dtsd(4)=''
dtsd(5)=''
dtsd(6)=''
crea tabl csmk (trangso n(3),tongtrang n(8),lrdso1 n(6),lrdso2 n(6),lrdso3 n(6),lrdso4 n(6),lrdso5 n(6),lrdso6 n(6),lrdso7 n(6),lrdso8 n(6),lrdso9 n(6),lrdso10 n(6),lrdso11 n(6),lrdso12 n(6),lrdso13 n(6),lrdso14 n(6),lrdso15 n(6))
use
  for j=1 to 6
    sele 6
     use csmk
    zap
sele 3
use cuoimk
  loca for dtsd=j
    If not found()
     j=j+1
     loop
    endif 
    dime ldso(15)
	         nLd=0
			LdSo=""
			*Tim  mot loai dat moi
				scan  for lrd<>space(5)
					Flag=.T.
					for i=1 to nld+1
						if LdSo(i) == lrd
						  repl sttld with i
							Flag=.F.
							exit
						endif
					endfor
	            	 If  Flag 	&& tim thay mot loai dat moi
						nld=nld+1
						LdSo(nld)=lrd
						  repl sttld with nld
					endif
*				endif
				endscan
			**********
       go top
       m_trangso=0
         scan for dtsd=j
            If trangso<>m_trangso
             m_tongtrang=0
              sele 6
                appe blan
               sele 3
            endif
            for i=1 to nld
              if lrd==ldso(i)
                 i=allt(str(i))
                 m_trangso=trangso
                 m_tongtrang=m_tongtrang+dtich
                sele 6
                repl lrdso&i with cuoimk.dtich,trangso with cuoimk.trangso,tongtrang with m_tongtrang
                i=16
                sele 3   
              endif
            endfor 
         endscan 
         sele 6
SORT TO c:\hsbd\thdtcsmk.dbf ON Csmk.trangso FIELDS Csmk.trangso,Csmk.tongtrang,Csmk.lrdso1,Csmk.lrdso2,Csmk.lrdso3,Csmk.lrdso4,Csmk.lrdso5,Csmk.lrdso6,Csmk.lrdso7,Csmk.lrdso8,Csmk.lrdso9,Csmk.lrdso10,Csmk.lrdso11,Csmk.lrdso12,Csmk.lrdso13,Csmk.lrdso14,Csmk.lrdso15
sele 5
use  c:\hsbd\thdtcsmk.dbf
      repo form thdt_smk.frx prev   
      close all
      dele file c:\hsbd\thdtcsmk.dbf
  endfor  
  clos all