package controle;

public class SwitchSemBreak {

	public static void main(String[] args) {
		
		String faixa = "Preta";
		
		switch (faixa.toLowerCase()) {
		case "preta":
			System.out.println("Sei o bassai-Dai...");
		case "marrom":
			System.out.println("Sei o Tekki Shodan");
		case "roxa":
			System.out.println("Sei o Heian Godan");
		case "amarela":
			System.out.println("Sei o Heian Shodan");
		}
		
	}
}
