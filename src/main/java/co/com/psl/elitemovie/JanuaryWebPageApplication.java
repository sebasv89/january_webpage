package co.com.psl.elitemovie;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

@SpringBootApplication
public class JanuaryWebPageApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(JanuaryWebPageApplication .class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(JanuaryWebPageApplication .class, args);
    }

}