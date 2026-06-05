
import java.util.*;


public class HashMapEx{
    public static void main(String[]args)
    {
        Scanner sc=new Scanner(System.in);
        HashMap<Integer,String> map=new HashMap<>();
        for(int i=0;i<3;i++){
            System.out.println("enter student ids:");
            int id=sc.nextInt();
            sc.nextLine();
            System.out.println("studnt names");
            String name=sc.nextLine();
            
            map.put(id,name);


        }
        System.out.println("entered id");
        int searchid=sc.nextInt();

        System.out.println("searchedids are:"+map.get(searchid));
        
    }
}
