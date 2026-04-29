package com.academy.primo_progetto.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SalutoController {

    @Value("${app.nome}")
    private String appNome;

    @Value("${app.versione}")
    private String appVersione;

    @Value("${app.messaggio-benvenuto}")
    private String messaggio;

    @Value("${server.port}")
    private String porta;

    @GetMapping("/saluto")
    public String saluta() {
        return "Ciao dal mio primo Spring Boot!!!";
    }

    @GetMapping("/info")
    public Map<String, String> info() {
        return Map.of("autore", "Lorenzo Millauro");
    }

    @GetMapping("/app-info")
    public String appInfo() {
        return "App: " + appNome + ", Versione: " + appVersione + ", Messaggio: " + messaggio;
    }

    @GetMapping("/configurazione-server")
    public String configurazioneServer() {
        return "Server in ascolto sulla porta: " + porta;
    }

}
