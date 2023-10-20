import java.util.Scanner;

import main.PetStore;

public aspect CheckAsurrance {
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	before() : verifyAssurance(){
		System.out.println("Verifying assurance...");
		Scanner scanner = new Scanner(System.in);
		System.out.println("Name of your pet:");
		String nombre_mascota = scanner.nextLine();
		System.out.println("Welcome " + nombre_mascota);
		System.out.println("You are able to use this service");
	}
	after() : verifyAssurance(){
		System.out.println("Request was executed succesfully");
	} 
}
