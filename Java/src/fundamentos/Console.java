package fundamentos;

import java.util.Scanner;

public class Console {

	public static void main(String[] args) {
		
		System.out.print("Bom");
		System.out.println(" dia!");
		
		System.out.printf("Megasena: %d %d %d %d %d %d ",
				1, 2, 3, 4, 5, 6);
		
		System.out.printf("Sal�rio: %.1f%n", 1234.5678);
		System.out.printf("Nome: %s%n", "Jo�o");
		
		Scanner entrada = new Scanner(System.in);
		
		entrada.nextLine();
		
		entrada.close();
	}

}
