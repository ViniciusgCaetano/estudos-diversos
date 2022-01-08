from unittest import TestCase
from dominio import Usuario, Lance, Leilao, Avaliador   

class TestLeilao(TestCase):
    
    
    def setUp(self):
        self.gui = Usuario('Gui')
        self.yuri = Usuario('Yuri')
        self.emilly = Usuario('Emilly')
        
        self.lance_do_yuri = Lance(self.yuri, 100.0)
        self.lance_do_gui = Lance(self.gui, 150.0) 
        self.lance_da_emilly = Lance(self.emilly, 90.0) 

        self.leilao = Leilao('celular')
        
        
    def test_deve_retornar_maior_e_o_menor_valor_de_um_lance_quando_adiconados_em_ordem_crescente(self):
  
        self.leilao.propoe(self.lance_do_yuri)
        self.leilao.propoe(self.lance_do_gui)

        self.leilao.avalia()

        menor_valor_esperado = 100
        maior_valor_esperado = 150
        self.assertEqual(menor_valor_esperado, self.leilao.menor_lance)
        self.assertEqual(maior_valor_esperado, self.leilao.maior_lance)
        
    def test_deve_retornar_maior_e_o_menor_valor_de_um_lance_quando_adicionado_apenas_um_lance(self):
  
        self.leilao.propoe(self.lance_do_gui)

        self.leilao.avalia()

        menor_valor_esperado = 150
        maior_valor_esperado = 150
        self.assertEqual(menor_valor_esperado, self.leilao.menor_lance)
        self.assertEqual(maior_valor_esperado, self.leilao.maior_lance)

    def test_deve_retornar_maior_e_o_menor_valor_de_um_lance_quando_adicionados_tres_lances(self):
        
        self.leilao.propoe(self.lance_da_emilly)
        self.leilao.propoe(self.lance_do_yuri)
        self.leilao.propoe(self.lance_do_gui)
       
        

        self.leilao.avalia()

        menor_valor_esperado = 90
        maior_valor_esperado = 150
        self.assertEqual(menor_valor_esperado, self.leilao.menor_lance)
        self.assertEqual(maior_valor_esperado, self.leilao.maior_lance)
        
        
    def test_deve_permitir_propor_lance_em_se_nao_houver_lances(self):
    
        self.leilao.propoe(self.lance_do_gui)
        self.assertEqual(1, len(self.leilao.lances))
    
    def test_nao_deve_permitir_propor_lance_quando_adicionado_lance_de_valor_menor_ao_anterior(self):
        self.leilao.propoe(self.lance_do_gui)
    
        with self.assertRaises(ValueError):
            self.leilao.propoe(self.lance_da_emilly)

    
    def test_nao_deve_permitir_propor_lance_quando_adicionado_lance_com_usuario_igual_ao_anterior(self):
        
        self.leilao.propoe(self.lance_da_emilly)
        
        with self.assertRaises(ValueError):
            lance_da_emilly200 = Lance(self.emilly, 200)
            self.leilao.propoe(lance_da_emilly200)