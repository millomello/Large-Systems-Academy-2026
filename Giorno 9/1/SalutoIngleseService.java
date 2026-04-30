package com.academy.giorno9.service;

import org.springframework.stereotype.Service;

@Service
public class SalutoIngleseService implements SalutoService {

    @Override
    public String getSaluto() {
        return "Good morning!";
    }

}
