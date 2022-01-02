package classes_metodos;

public class DataTeste {

	public static void main(String[] args) {
		
		Data d1 = new Data(1, 5, 2005);
		
		var d2 = new Data();
		d2.dia = 31;
		d2.mes = 12;
		d2.ano = 2020;
		
		
		System.out.println(d1.obterDataFormatada());
		System.out.println(d2.obterDataFormatada());
	}

}
