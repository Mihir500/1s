import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class mihir {

	public static void main(String[] args) {
				System.setProperty("webdriver.chrome.driver","C:/Sellenium/chromedriver.exe");
				WebDriver driver = new ChromeDriver();
				driver.get("https://www.jotform.com/build/232830739510050");
				driver.findElement(By.id("first_3")).sendKeys("Mihir");
			}
			
			

		}

junit:

package pro;

public class additon {

	public int add(int a, int b)
	{
		return(a+b);
	}
	public String concat(String a, String b)
	
	{
		return(a+" "+b);
		
		
		
		

	}

}

tc:
package pro;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;


class additonTest {

	@Test
	void test() {
		additon a = new additon();
		String r = a.concat("hello","hii");
		assertEquals("hello hii",r);
	}

}
junit circle
package selinium;

public class circle {
	double radius;




	public circle(double radius) {

	this.radius = radius;

	}

	/**

	*

	* @return

	*/

	public double calculateArea() {

	return Math.PI * radius * radius;

	}




	public double calculatePerimeter() {

	return 2 * Math.PI * radius;

	}




	}
circle test
package selinium;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class circleTest {

	private circle Circle;
	private double radius = 5.0;

	@BeforeEach
	public void setup() {
	Circle = new circle(radius);
	}

	@Test
	public void testCalculateArea() {
	double expected = 78.53981633974483;
	double actual = Math.PI * Circle.radius * Circle.radius;
	assertEquals(expected, actual);
	}

	@Test
	public void testCalculatePerimeter() {
	double expected = 31.41592653589793;
	double actual = Circle.calculatePerimeter();
	assertEquals(expected, actual);
	}

	}
rectangle 
package selinium;

public class Rectangle {
	private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    public double getArea() {
        return length * width;
    }

    
}

	rectangle test
package selinium;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class RectangleTest {

	 @Test
	    public void testGetArea() {
	        Rectangle r = new Rectangle(5, 10);
	        assertEquals(50, r.getArea());
	    }

	    @Test
	    public void testOverlap() {
	        Rectangle r1 = new Rectangle(5, 10);
	        

	        assertEquals(50, 50);
	    }

}
triangle
public class triangle {
    public static double area(double a, double b, double c) {
        if (a + b <= c || b + c <= a || c + a <= b) {
            throw new IllegalArgumentException("Invalid triangle sides");
        }
        double s = (a + b + c) / 2.0;
        return Math.sqrt(s * (s - a) * (s - b) * (s - c));
    }
}
triangle testcase
package circle;

import org.junit.Test;
import static org.junit.Assert.*;

public class triangleTest {
    @Test
    public void testArea() {
        double a = 3.0;
        double b = 4.0;
        double c = 5.0;
        double expectedArea = 6.0;
        double actualArea = triangle.area(a, b, c);
        assertEquals(expectedArea, actualArea, 0.0001);
    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testInvalidTriangle() {
        double a = 3.0;
        double b = 4.0;
        double c = 10.0;
        triangle.area(a, b, c);
    }
}
