package examples.demo;

import com.intuit.karate.junit5.Karate;

class RunnerJs {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("invokeJavascript").relativeTo(getClass());
    }    

}
