package com.academy.giorno9.component;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.springframework.stereotype.Component;

@Component
public class SalutoComplesso {

    @PostConstruct
    public void init() {
        System.out.println("Bean inizializzato!");
    }

    @PreDestroy
    public void cleanup() {
        System.out.println("Bean distrutto!");
    }
}