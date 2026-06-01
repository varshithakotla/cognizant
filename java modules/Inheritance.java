class Animal{
    void makesound(){
        System.out.println("animals make sounds");
    }
}
class Dog extends Animal{
    @Override
    void makesound(){
        System.out.println("dogs bark");
    }
}
public class Inheritance{
    public static void main(String[] args) {
         Animal animal = new Animal();
        Dog dog = new Dog();

        animal.makesound();
        dog.makesound();
            }
}