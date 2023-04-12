package runner;


import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

/**
 * Configurationo karate runner
 */
public class TestKarateApi {

    @Test
    @Karate.Test
    public Karate test(){
        return Karate.run("classpath:features/testApi.feature");
    }
}
