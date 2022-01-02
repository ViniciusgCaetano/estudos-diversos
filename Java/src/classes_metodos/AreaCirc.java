package classes_metodos;

public class AreaCirc {
	
	double raio;
	final static double PI = 3.14;
	
	AreaCirc(double raioIncial){
		raio = raioIncial;
	}
	
	double area() {
		return PI * Math.pow(raio, 2);
	}
	
	static double area(double raio) {
		return PI * Math.pow(raio, 2);
		
	}
}
