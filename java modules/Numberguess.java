import java.util.Random;
import java.util.Scanner;

public class Numberguess {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Random random = new Random();

        int secretNumber = random.nextInt(100) + 1;
        int guess;

        do {
            System.out.print("Enter your guess: ");
            guess = sc.nextInt();

            if (guess > secretNumber) {
                System.out.println("Too high! Try again.");
            } 
            else if (guess < secretNumber) {
                System.out.println("Too low! Try again.");
            } 
            else {
                System.out.println("Congratulations! You guessed the correct number.");
            }

        } 
    }
}