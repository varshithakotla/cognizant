


public class Overloading{
    int add(int a,int b){
        return a+b;
    }
    double add(double a,double b){
        return a+b;
    }
    int add(int a,int b,int c){
        return a+b+c;
    }
    public static void main(String[] args) {
        Overloading ov=new Overloading();
        System.out.println(ov.add(10,20));
         System.out.println(ov.add(100,200));
          System.out.println(ov.add(10,20,30));
        
    }
}