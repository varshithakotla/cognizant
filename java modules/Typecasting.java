public class TypeCasting{
    public static void main(String[] args) {

        double d = 25.75;
        int num = (int) d;
        System.out.println("Double value: " + d);
        System.out.println("After casting to int: " + num);

        int x = 100;
        double result = (double) x;

        System.out.println("Integer value: " + x);
        System.out.println("After casting to double: " + result);
    }
}