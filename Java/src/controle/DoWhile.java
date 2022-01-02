package controle;

import java.util.Scanner;

public class DoWhile {

	public static void main(String[] args) {
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
		Scanner input = new Scanner(System.in);
		
		String texto = "";
		
		do {
			System.out.println("Digte 'sair' para sair: ");
			
			texto = input.nextLine();
			System.out.printf("Você digitou: %s", texto);
			
		} while(!texto.equalsIgnoreCase("sair"));
		
		
		input.close();
	}

}
