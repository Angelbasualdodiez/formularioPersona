
public class ArrayExamen {
public static void main(String[]args) {
	String[]lista=new String [] {"hola","que","tal","estas"};
	for(int i=lista.length-1;i>-1;i--) {
		for(int j=lista[i].length()-1;j>-1;j--) {
			char caracter=lista[i].charAt(j);
			System.out.println(caracter);
		}
		}
		System.out.println();
	}
}

