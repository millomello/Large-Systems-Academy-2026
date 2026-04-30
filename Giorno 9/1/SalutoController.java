package com.academy.giorno9.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.academy.giorno9.component.ContatoreBeanPrototype;
import com.academy.giorno9.component.ContatoreBeanSingleton;
import com.academy.giorno9.service.SalutoService;

/*
 @Primary e @Qualifier:
 @Primary definisce il bean di default quando ci sono più implementazioni.
 @Qualifier serve per scegliere esplicitamente quale bean usare ignorando il default.

 Singleton e Prototype:
 Singleton crea una sola istanza del bean condivisa in tutta l’applicazione.
 Prototype crea una nuova istanza ogni volta che il bean viene richiesto.
*/

@RestController
public class SalutoController {

    private final SalutoService salutoService;
    private final ContatoreBeanSingleton contatoreSingleton;
    private final ContatoreBeanPrototype contatorePrototype;

    @Autowired
    public SalutoController(
            // prova senza Qualifier (usa @Primary)
            // SalutoService salutoService,

            // poi prova così:
            @Qualifier("salutoIngleseService") SalutoService salutoService,
            ContatoreBeanSingleton contatoreSingleton,
            ContatoreBeanPrototype contatorePrototype
    ) {
        this.salutoService = salutoService;
        this.contatoreSingleton = contatoreSingleton;
        this.contatorePrototype = contatorePrototype;
    }

    @GetMapping("/saluto")
    public String saluto() {
        return salutoService.getSaluto();
    }

    @GetMapping("/singleton")
    public String singleton() {
        contatoreSingleton.incrementa();
        return "Contatore singleton: " + contatoreSingleton.getContatore();
    }

    @GetMapping("/prototype")
    public String prototype() {
        contatorePrototype.incrementa();
        return "Contatore prototype: " + contatorePrototype.getContatore();
    }
}
