import java.util.*;

public class MediaNotasExamen {
    public static void main(String[] args) {
        
        ArrayList<Integer> notas = new ArrayList<>();
        notas.add(3);
        notas.add(6);
        notas.add(10);
        notas.add(7);
        notas.add(2);
        notas.add(8);
        notas.add(3);
        notas.add(5);

       
        int sumaNotasAprobadas = 0;
        int cantidadNotasAprobadas = 0;

        
        for (Integer nota : notas) {
            if (nota >= 5) {
                sumaNotasAprobadas += nota;
                cantidadNotasAprobadas++;
            }
        }

       
        if (cantidadNotasAprobadas > 0) {
            double media = (double) sumaNotasAprobadas / cantidadNotasAprobadas;
            System.out.println("La media de las notas aprobadas es: " + media);
        } else {
            System.out.println("No hay notas aprobadas.");
        }
    }
}