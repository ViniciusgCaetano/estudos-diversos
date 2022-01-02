package controle;

import java.util.Scanner;

public class DesafioWhile {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		String entrada = "";
		
		while(entrada.toUpperCase().equals("SAIR") == false) {
			
			System.out.println("Quer sair?: ");
			entrada = input.nextLine();
		}
		
		input.close();
	}

}
