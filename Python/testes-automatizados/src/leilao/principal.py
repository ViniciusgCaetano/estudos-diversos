from dominio import Usuario, Lance, Leilao, Avaliador


gui = Usuario('Gui')
yuri = Usuario('Yuri')

lance_do_yuri = Lance(yuri, 100.0)
lance_do_gui = Lance(gui, 150.0) 

leilao = Leilao('celular')

leilao.propoe(lance_do_gui)
leilao.propoe(lance_do_yuri)


for lance in leilao.lances:
    print(f'Lance do {lance.usuario.nome}: R${lance.valor}')

leilao.avalia()
print(f'O maior lance foi de R$ {leilao.maior_lance} e o menor lance foi de R$ {leilao.menor_lance}')
