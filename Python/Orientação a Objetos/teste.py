from conta import Conta

conta1 = Conta(123, "Nico", 55, 1000)
conta2 = Conta(321, "Marco", 100, 1000)

valor = 10

conta2.transfere(10, conta1)

conta1.extrato()
conta2.extrato()