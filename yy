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
alternative
package sahil;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class abhijit {

	public static void main(String[] args) {
		
		System.setProperty("webdriver.chrome.driver","C:/Users/Sanket Naik/Desktop/seleniumtools/chromedriver.exe");
		
		WebDriver driver = new ChromeDriver();
		
		driver.get("https://www.jotform.com/build/232833384378061");
		
		driver.findElement(By.id("first_3")).sendKeys("John"); 
	    driver.findElement(By.id("last_3")).sendKeys("Doe");
	    
	    // Email textbox
	    driver.findElement(By.id("input_10")).sendKeys("john.doe@email.com");

	    // Phone number textbox
	    driver.findElement(By.id("input_11_full")).sendKeys("123-456-7890");

	    // Dropdown 
	  //  Select dropdown = new Select(driver.findElement(By.id("input_5")));
	  //  dropdown.selectByVisibleText("I don't have");

	 // Find radio button group 
	 //   List<WebElement> radioButtons = driver.findElements(By.name("are you doumb"));

	    // Select 2nd option 
	 //.get(1).click();
	    
	    // Find submit button and click it
	    WebElement submitBtn = driver.findElement(By.id("submit"));
	    submitBtn.click();
		
		
	}

}

junit:concat

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
junit add
public class AddNumbers {
    public static int add(int a, int b) {
        return a + b;
    }
}

import org.junit.Test;
import static org.junit.Assert.*;

public class AddNumbersTest {
    @Test
    public void testAdd() {
        int a = 3;
        int b = 4;
        int expectedSum = 7;
        int actualSum = AddNumbers.add(a, b);
        assertEquals(expectedSum, actualSum);
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
