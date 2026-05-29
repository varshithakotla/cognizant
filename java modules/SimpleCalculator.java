
import java.util.Scanner;

public class SimpleCalculator{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter first number");
        int num1=sc.nextInt();
        System.out.println("Enter second number");
        int num2=sc.nextInt();
        System.out.print("Enter operator (+, -, *, /): ");
        char op = sc.next().charAt(0);
        double res;
        if (op == '+') {
            res = num1 + num2;
            System.out.println("Result = " + res);
        }
            else if (op == '-') {
            res = num1 - num2;
            System.out.println("Result = " + res);
            }

            else if (op == '*') {
            res = num1 * num2;
            System.out.println("Result = " + res);
            }

            else if (op == '/') {

            if (num2 != 0) {
                res = num1 / num2;
                System.out.println("Result = " + res);
            } else {
                System.out.println("Cannot divide by zero");
            }

        } else {
            System.out.println("Invalid operator");
        }


    }
}