package com.tokarieva;

import com.tokarieva.service.InitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Main {
    private static final Logger LOGGER = LoggerFactory.getLogger(Main.class);
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
        LOGGER.warn("I've ADDED LOGGER!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    }

    @Autowired
    private InitService initService;

    @Bean
    public CommandLineRunner commandLineRunner(){
        return (String... args) -> {
            initService.initUser();
        };
    }
}