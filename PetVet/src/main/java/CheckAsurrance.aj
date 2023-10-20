import main.PetStore;

public aspect CheckAsurrance {
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	after() : verifyAssurance(){
		System.out.println("Request was executed succesfully");
	} 
}
