 package controle;

import java.util.Scanner;

public class SwitchComBrake {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		

		
		String conceito = "";
		int nota = 7;
		
		switch(nota) {
		case 10: case 9:
			conceito = "A";
			break;
		case 8: case 7:
			conceito = "B";
			break;
		case 6: case 5:
			conceito = "C";
			break;
		case 4: case 3:
			conceito = "D";
			break;
		case 2: case 1: case 0:
			conceito = "A";
			break;
		default:
			conceito = "não informado!";
		}
		
		System.out.println("Conceito é: " + conceito);	
		
		input.close();
	}

}
