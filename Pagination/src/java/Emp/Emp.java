package Emp;
/**
 *
 * @author 91963
 */
public class Emp {
    private int id;  
    private String name;  
    private float salary;     

    public void setId(int aInt) {
        id = aInt;
    }

    public void setName(String string) {
        name = string;
    }

    public void setSalary(float aFloat) {
        salary = aFloat;
    }
    
    public int getId(){
        return id;
    }
    
    public String getName(){
        return name;
    }
    
    public float getSalary(){
        return salary;
    }
}  