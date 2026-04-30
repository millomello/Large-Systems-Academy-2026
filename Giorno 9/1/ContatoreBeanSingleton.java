package com.academy.giorno9.component;

import org.springframework.stereotype.Component;

@Component
public class ContatoreBeanSingleton {

    private int contatore = 0;

    public void incrementa() {
        contatore++;
    }

    public int getContatore() {
        return contatore;
    }
}