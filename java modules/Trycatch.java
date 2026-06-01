
import java.util.Scanner;

public class Trycatch{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int a=sc.nextInt();
        int b=sc.nextInt();
        try {
            int c=a/b;
        System.out.println("result"+c);
        } catch (ArithmeticException e) {
            System.out.println("cannot divide");
        }
    }
}