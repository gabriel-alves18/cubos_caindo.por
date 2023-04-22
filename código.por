programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Graficos --> g
	
	const inteiro alt_larg_janel = 600
	const inteiro alt_lar_bloc = 50
	
	funcao inicio()
	{
		cria_mesa()
		desenha_mesa()
	}
	funcao cria_mesa()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(alt_larg_janel, alt_larg_janel)
		g.definir_titulo_janela("CUBOS QUEM CAEM")
	}
	funcao le_cord_x()
	{
		se(t.tecla_pressionada(t.TECLA_SETA_DIREITA))
		{
			x = x + 5
		}
		se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA))
		{
			x = x - 5
		}
	}
	inteiro x = 300
	funcao desenha_mesa()
	{
		desenha_cubos_caindo()
	}
	inteiro quadrado = 1	
	//inteiro cord_X[]
	funcao desenha_cubos_caindo()
	{
		enquanto(quadrado <= 10)
		//para(inteiro quadrado=0;quadrado<=10;quadrado++)
		{
			para(inteiro y=0;y<=550;y++)
			{
				g.definir_cor(g.COR_BRANCO)
				g.limpar()
			
				se(y==550)
				{
					//cord_X[quadrado] = x
					desenha_cubos_embaixo()
				}
				le_cord_x()
				g.definir_cor(g.COR_PRETO)
				g.desenhar_retangulo(x, y, 50, 50, falso, verdadeiro)

				g.renderizar()
				u.aguarde(1)
			}
			quadrado = quadrado + 1
		}
	}
	funcao desenha_cubos_embaixo()
	{
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(x, 550, alt_lar_bloc, alt_lar_bloc, falso, verdadeiro)

		g.renderizar()
		u.aguarde(100)
	}
}
