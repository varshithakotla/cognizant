import java.util.*;
import java.io.IOException;
import java.io.FileWriter;
class Filewriting{
    public static void main (String[]args){
        Scanner sc=new Scanner(System.in);
        System.out.println("enter data");
        String data=sc.nextLine();
        try{
            FileWriter wt=new FileWriter("output.txt");
            wt.write(data);
            wt.close();
        }
        catch(IOException e){
            System.out.println("error exception" +e.getMessage());
        }
    }
}
