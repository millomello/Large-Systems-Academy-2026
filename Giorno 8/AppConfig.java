package com.academy.primo_progetto.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;

@Component
public class AppConfig {

    @Value("${app.nome}")
    private String nome;

    @Value("${app.versione}")
    private String versione;

    @Value("${app.messaggio-benvenuto}")
    private String messaggio;

    @PostConstruct
    public void init() {
        System.out.println("=== CONFIGURAZIONE APP ===");
        System.out.println("Nome: " + nome);
        System.out.println("Versione: " + versione);
        System.out.println("Messaggio: " + messaggio);
    }
}   