       IDENTIFICATION DIVISION.
			PROGRAM-ID. TRIANGULO.
			
       ENVIRONMENT DIVISION.
			CONFIGURATION SECTION.
				SPECIAL-NAMES.
				DECIMAL-POINT IS COMMA.
				
       DATA DIVISION.
		WORKING-STORAGE SECTION.
		  01  VARIAVEIS-WORKING.
           05  W-BASE                  PIC 9(3) VALUE ZEROS.
           05  W-ALTURA                PIC 9(3) VALUE ZEROS.
		   05  W-SOMA                  PIC 9(3) VALUE ZEROS.
           05  W-AREA                  PIC 9(3) VALUE ZEROS.
		   				
       PROCEDURE DIVISION.	   
		   INITIALIZE VARIAVEIS-WORKING.           
           DISPLAY "Informe a Base...:" AT 0607.
		   ACCEPT W-BASE                AT 0625
		   ADD W-BASE               	TO W-SOMA		   
		   DISPLAY "Informe a Altura.:" AT 0707.
		   ACCEPT W-ALTURA              AT 0725.
		   ADD W-ALTURA                	TO W-SOMA. 
		   DIVIDE W-SOMA                BY 2 GIVING W-AREA.
           DISPLAY "A area e.........:" AT 0907.          
		   DISPLAY W-AREA       	    AT 0925.           		         		   
       STOP RUN.