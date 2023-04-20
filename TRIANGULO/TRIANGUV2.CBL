      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
           PROGRAM-ID.    TRIANGULO.
      *----------------------------------------------------------------*
       ENVIRONMENT DIVISION.
       	   CONFIGURATION SECTION.
      *----------------------------------------------------------------*
               SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
      *----------------------------------------------------------------*
       DATA DIVISION.
           WORKING-STORAGE SECTION.
      *----------------------------------------------------------------*
            01  VARIAVEIS-WORKING.
            05  W-BRANCOS               PIC X(55) VALUE SPACES.
            05  W-BASE                  PIC 9(03) VALUE ZEROS.
            05  W-ALTURA                PIC 9(03) VALUE ZEROS.
            05  W-SOMA                  PIC 9(03) VALUE ZEROS.
            05  W-AREA                  PIC 9(03) VALUE ZEROS.
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
            00000-PRINCIPAL SECTION.
                PERFORM 10000-INICIA
                PERFORM 20000-PROCESSA-BASE
                PERFORM 90000-FINALIZA          
                STOP RUN
                .
           99999-FIM-PRINCIPAL.
                EXIT.
      *----------------------------------------------------------------*
           10000-INICIA SECTION.
                INITIALIZE VARIAVEIS-WORKING
                DISPLAY "Informe a Base...:" AT 0607
                DISPLAY "Informe a Altura.:" AT 0707
                DISPLAY "A area e.........:" AT 0907
                DISPLAY "Mensagem.........:" AT 1107
                DISPLAY W-BRANCOS            AT 1207
                .
           19999-FIM-INICIA.
                EXIT.
      *----------------------------------------------------------------*
           20000-PROCESSA-BASE SECTION.
                ACCEPT W-BASE                    AT 0625
                DISPLAY W-BRANCOS                AT 2025 
                IF W-BASE = 0
                   DISPLAY "Campo obrigatorio"        AT 1125
                   STOP " "
                   DISPLAY W-BRANCOS                  AT 1125
                   GO 20000-PROCESSA-BASE
                END-IF
                ADD W-BASE                       TO W-SOMA
                .
           20100-PROCESSA-ALTURA.
                ACCEPT W-ALTURA                  AT 0725
                DISPLAY W-BRANCOS                AT 2025
                IF W-ALTURA = 0
                    DISPLAY "Campo obrigatorio"         AT 1125
                    STOP " "
                    DISPLAY W-BRANCOS                   AT 1125
                    GO 20100-PROCESSA-ALTURA
                END-IF
                ADD W-ALTURA                TO W-SOMA
                DIVIDE W-SOMA               BY 2 GIVING W-AREA
                DISPLAY W-AREA              AT 0925
                DISPLAY W-BRANCOS           AT 1207
                STOP " "
                . 
           89999-FIM-PROCESSA.
                EXIT.
      *----------------------------------------------------------------*
           90000-FINALIZA SECTION.
           99999-FIM-FINALIZE.
                EXIT.