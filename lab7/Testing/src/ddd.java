import java.util.Scanner;

public class ddd {

    public static void main(String[] var0) {
        Scanner input = new Scanner(System.in);
        int i=1;
        while(true){
            String id=input.nextLine();
            System.out.println("\tdef testIdincorrect"+i+"(self):\n" +
                    "\t\tself.assertEqual(CheckId.Black('"+id+"').exec(),0)");
        i++;
        }


    }
}
