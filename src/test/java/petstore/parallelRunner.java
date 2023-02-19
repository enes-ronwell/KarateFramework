package petstore;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static junit.framework.TestCase.assertTrue;

public class parallelRunner {

    @Test
    public void testParallel(){
        Results results = Runner.path("classpath:petstore").tags("").parallel(3);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }


}
