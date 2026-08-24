      ORG 0000H
		  MAIN:  SETB P1.0 ;
		  SETB P1.1
		  LOOP: MOV C, P1.0 ;
		  ORL C, P1.1 ;
		 ; OR B 
		  ; CPL C ;
		 ;  NOT(A OR B ) = NOR
		   MOV P1.2, C ;
		  ; (drive LED)
		   SJMP LOOP
		   END