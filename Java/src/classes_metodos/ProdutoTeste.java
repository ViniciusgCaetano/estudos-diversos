package classes_metodos;

public class ProdutoTeste {

	public static void main(String[] args) {
		

		Produto p1 = new Produto("Notebook", 4356.89);

		
		var p2 = new Produto();
		p2.nome = "Caneta Preta";
		p2.preco = 12.56;
		
		Produto.desconto = 0.50;
		
		System.out.println(p1.nome + " " + p1.precoComDesconto());
		System.out.println(p2.nome + " " + p2.precoComDesconto());
		
		
		double mediaCarrinho = (p1.precoComDesconto() + p2.precoComDesconto(0.1)) / 2;
		
		System.out.printf("A m�dia do carrinho � R$%.2f.", mediaCarrinho);
	}

}
