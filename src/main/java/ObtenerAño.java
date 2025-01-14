import java.util.*;
import java.text.*;

public class ObtenerAño {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Introduce una fecha (dd/MM/yyyy): ");
        String fechaInput = scanner.nextLine();
        
        try {
            
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Date fecha = sdf.parse(fechaInput);
            
            
            Calendar calendario = Calendar.getInstance();
            calendario.setTime(fecha);
            int año = calendario.get(Calendar.YEAR);
            
            
            System.out.println("El año de la fecha es: " + año);
        } catch (ParseException e) {
            
        } finally {
        }
    }
}