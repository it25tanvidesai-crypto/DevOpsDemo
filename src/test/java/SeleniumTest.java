import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class SeleniumTest {

    @Test
    public void testMovieBooking() {

        WebDriver driver = new ChromeDriver();

        try {

            // Open MovieHub application
            driver.get("http://localhost:8081/DevOpsDemo/");

            // Check page title
            assertEquals(
                    "MovieHub | Movie & Event Booking",
                    driver.getTitle()
            );

            // Select movie
            driver.findElement(By.id("movie"))
                    .sendKeys("Avengers");

            // Select city
            driver.findElement(By.id("city"))
                    .sendKeys("Mumbai");

            // Enter booking date
            driver.findElement(By.id("date"))
                    .sendKeys("09/30/2026");

            // Select show time
            driver.findElement(By.id("show"))
                    .sendKeys("7:00 PM");

            // Enter number of tickets
            driver.findElement(By.id("tickets"))
                    .sendKeys("2");

            // Click Confirm Booking
            driver.findElement(By.id("bookButton"))
                    .click();

            // Get confirmation message
            String message = driver.findElement(By.id("message"))
                    .getText();

            // Verify booking confirmation
            assertTrue(
                    message.contains("Booking Confirmed"),
                    "Booking confirmation was not displayed"
            );

        } finally {

            // Close browser
            driver.quit();
        }
    }
}