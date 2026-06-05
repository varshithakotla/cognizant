import java.util.*;
import java.io.FileNotFoundException;
import java.io.IOException;

class FileReader{
  public static void main(String[]args){
    try{
      File file=new File("output.txt");
      System.out.println("file commits");
      Scanner sc=new Scanner(System.in);
      
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                System.out.println(line);
            }
catch(FileNotFoundException e){
  Dystem.out.println("error message");
}
  }
}
