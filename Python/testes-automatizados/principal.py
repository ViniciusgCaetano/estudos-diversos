from dominio import Usuario, Lance, Leilao, Avaliador


gui = Usuario('Gui')
yuri = Usuario('Yuri')

lance_do_yuri = Lance(yuri, 100.0)
lance_do_gui = Lance(gui, 150.0) 

leilao = Leilao('celular')

leilao.lances.append(lance_do_yuri)
leilao.lances.append(lance_do_gui)

for lance in leilao.lances:
    print(f'Lance do {lance.usuario.nome}: R${lance.valor}')

avaliador = Avaliador()
avaliador.avalia(leilao)
print(f'O maior lance foi de R${avaliador.maior_lance} e o menor lance foi de R${avaliador.menor_lance}')

