identification division.
   program-id.                             Menu.
   author.                              autor.
data division.
  working-storage section.
     77 opcao        pic 9 value zero.
     77 wopcao       pic 9 value zero.
  screen section.
     01 menu-principal.
         02 blank screen.
         02 line 1 col 1 value"#########################################
-"#######################################".
       02 line 3 col 21 value "Sistema de compra e venda de Mercadorias"
      -.
       02 line 5 col 1 value "##########################################
      -"######################################".


          02 line 7 col 33 value "Menu Principal".
          02 line 10 col 10 value "[1] Cadastro Mercadoria".
          02 line 11 col 10 value "[2] Cadastro Cliente".
          02 line 12 col 10 value "[3] Cadastro Vendedor/Comprador".
          02 line 13 col 10 value "[4] Listagem de Mercadoria".
          02 line 14 col 10 value "[5] Listagem Cliente".
          02 line 15 col 10 value "[6] Sair do Sistema".
          02 line 18 col 10 "Digite o numero desejado[...]".
          02 opcao line 18 col 36 pic 9 using wopcao auto.
  procedure division.
    inicio.
        display menu-principal
        accept menu-principal
        evaluate wopcao
          when 1
             call "cadmercadoria" using wopcao
             go to inicio
          when 2
             call "CadastroCliente" using wopcao
          when 6
            stop run
          when other
            go to inicio
       end-evaluate
.