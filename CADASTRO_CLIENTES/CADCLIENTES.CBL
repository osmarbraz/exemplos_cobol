 identification division.
       program-id. aplic.
       author. autor.
       environment division.
         configuration section.
         input-output section.
           file-control.
             select clientes assign to "clientes.dat"
             organization is indexed
             access mode is dynamic
             record key is codigo
             alternate key is nome with duplicates
             file status is fs-clientes.
       data division.
         file section.
           fd clientes.
             01 registro-clientes.
                02 codigo              pic 9999.
                02 nome                pic x(50).
                02 data-nas.
                   03 dia-nas             pic 99.
                   03 mes-nas             pic 99.
                   03 ano-nas             pic 9999.
                02 telefone               pic x(30).
                02 endereco               pic x(50).
                02 numero                 pic 9(6).
                02 complemento            pic x(30).
                02 bairro                 pic x(30).
                02 cidade                 pic x(30).
                02 cep                    pic x(8).
                02 estado                 pic AA.
                02 email                  pic x(50).
             01 reg-cliente.
                02 wcodigo              pic 9999 values zero.
                02 wnome                pic x(50) values spaces.
                02 wdata-nas.
                   03 wdia-nas             pic 99 values zero.
                   03 wmes-nas             pic 99 values zero.
                   03 wano-nas             pic 9999 values zero.
                02 wtelefone               pic x(30) value spaces.
                02 wendereco               pic x(50) value spaces.
                02 wnumero                 pic 9(6) value zero.
                02 wcomplemento            pic x(30) value spaces.
                02 wbairro                 pic x(30) value spaces.
                02 wcidade                 pic x(30) value spaces.
                02 wcep                    pic x(8) value spaces.
                02 westado                 pic AA value spaces.
                02 wemail                  pic x(50) value spaces.
       working-storage section.
          01 fs-clientes.
             02 fs-clientes-1            pic 9.
             02 fs-clientes-2            pic 9.
             02 fs-cliente-r redefines fs-clientes-2 pic 99 comp-x.
          77 opcao                       pic x value spaces.
       procedure division.
       abertura.
       open i-o clientes.
       inicio.
          display erase
          perform tela
          if opcao="S" or opcao="s" then
             perform grava-dados
             perform limpa-campos
             go to inicio
          else
             go to inicio
          end-if
       .
       tela.
         display "Cadastro de cliente" at 0430
         display "Codigo             : " at 0605
         display "Nome               : " at 0705
         display "Data Nascimento    :   /  /" at 0805
         display "Endereco           : " at 0905
         display "Telelefone         : " at 1005
         display "Numero             : " at 1105
         display "Complemento        : " at 1205
         display "Bairro             : " at 1305
         display "Cidade             : " at 1405
         display "C.E.P              : " at 1505
         display "Estado             : " at 1605
         display "E-mail             : " at 1705
         accept wcodigo at 0625
         if wcodigo = 9999 then
             close clientes
             exit program
         end-if
         accept wnome at 0725
         accept wdia-nas at 0825
         accept wmes-nas at 0828
         accept wano-nas at 0831
         accept wendereco at 0925
         accept wtelefone at 1025
         accept wnumero at 1125
         accept wcomplemento at 1225
         accept wbairro at 1325
         accept wcidade at 1425
         accept wcep at 1525
         accept westado at 1625
         accept wemail at 1725
         display "Dados corretos [S/N] [.]" at 1905
         accept opcao at 1927
         .
       limpa-campos.
           move spaces to reg-cliente.
       grava-dados.
       move reg-cliente to registro-clientes
       write registro-clientes.