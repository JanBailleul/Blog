package be.intecbrussel.service;

import be.intecbrussel.bean.BlogBean;

import java.util.ArrayList;

public class HelloService {
    public void blogHello(BlogBean hello) {

        System.out.println("Handling" + hello.getName());
    }
}
