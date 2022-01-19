class Calulador_de_descontos(object):
    
    def calcula(self, orcamento):
        
        if orcamento.total_de_itens > 5:
            return orcamento.valor * 0.1
        elif orcamento.valor > 500:
            return orcamento.valor * 0.07
            
if __name__ == '__main__':
    
    from orcamento import Orcamento, Item
    
    orcamento = Orcamento()
    orcamento.adiciona_item(Item('ITEM 1', 100.0))
    orcamento.adiciona_item(Item('ITEM 2', 50.0))
    orcamento.adiciona_item(Item('ITEM 3', 400.0))
    
    print(orcamento.valor)
    
    calculador = Calulador_de_descontos()
    desconto_calculado = calculador.calcula(orcamento)
    print(f'Desconto total: {desconto_calculado:.2f}')