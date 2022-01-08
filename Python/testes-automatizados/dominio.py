import sys


class Usuario:

    def __init__(self, nome):
        self.__nome = nome
    
    @property
    def nome(self):
        return self.__nome


class Lance:

    def __init__(self, usuario, valor):
        self.usuario = usuario
        self.valor = valor
    

class Leilao:

    def __init__(self, descricao):
        self.maior_lance = sys.float_info.min
        self.menor_lance = sys.float_info.max
        self.descricao = descricao
        self.__lances = [Lance('Inicial', sys.float_info.min)]
    
    def propoe(self, lance: Lance):
        if self.__lances[-1].usuario == lance.usuario:
            raise ValueError('O mesmo usário não pode propor dois lances seguidos')
        elif lance.valor <= self.__lances[-1].valor:
            raise ValueError('Não se pode dar um lance menor ou igual ao antrior')
        else:
            self.__lances.append(lance)
        
    def avalia(self):
        for lance in self.__lances[1:]:
            if lance.valor > self.maior_lance:
                self.maior_lance = lance.valor
            if lance.valor < self.menor_lance:
                self.menor_lance = lance.valor   
    
    @property
    def lances(self):
        return self.__lances[1:]

class Avaliador:

    def __init__(self):
        self.maior_lance = sys.float_info.min
        self.menor_lance = sys.float_info.max

    def avalia(self, leilao: Leilao):
        for lance in leilao.lances:
            if lance.valor > self.maior_lance:
                self.maior_lance = lance.valor
            if lance.valor < self.menor_lance:
                self.menor_lance = lance.valor
