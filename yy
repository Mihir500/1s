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
