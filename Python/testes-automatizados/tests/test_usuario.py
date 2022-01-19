import sys
sys.path.append("./")
import pytest
from src.leilao.dominio import Usuario, Lance, Leilao


@pytest.fixture
def vini():
    return Usuario('Vini', 100)

@pytest.fixture
def leilao():
    return Leilao('Celular')

def test_deve_subtrair_valor_da_carteira_do_usuario_quanto_este_propor_um_lance(vini, leilao):
    
    vini.propoe_lance(leilao, 50.0)
    
    assert vini.carteira == 50
    

def test_deve_permitir_propor_lance_quando_o_valor_eh_menor_que_o_valor_da_carteira(vini, leilao):
    
    vini.propoe_lance(leilao, 1.0)
    
    assert vini.carteira == 99

def test_deve_permitir_propor_lance_quando_o_valor_eh_igual_que_o_valor_da_carteira(vini, leilao):
    
    vini.propoe_lance(leilao, 100)
    
    assert vini.carteira == 0

def test_deve_permitir_propor_lance_quando_o_valor_eh_maior_que_o_valor_da_carteira(vini, leilao):
    with pytest.raises(ValueError):
        
        vini.propoe_lance(leilao, 200)
        
        assert vini.carteira == 100