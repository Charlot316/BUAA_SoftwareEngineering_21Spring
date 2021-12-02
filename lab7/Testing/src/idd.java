import java.util.Scanner;

public class idd {
    public static void main(String[] var0) {
        Scanner input = new Scanner(System.in);

        String correct="10X98765432";
        int weight[];
        weight= new int[] {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};
        while(true){
            String id=input.nextLine();
            int count=0;

            for(int i=0;i<17;i++){
                count+=Integer.parseInt(id.substring(i,i+1))*weight[i];
            }
            System.out.println(count%11);
            if (correct.substring(count%11,count%11+1).equals(id.substring(17))){
                System.out.println("okk");
            }
            else{
                System.out.println("no");
                System.out.println(id);
                System.out.println("应该为"+correct.substring(count%11,count%11+1));
            }
        }


    }
}
