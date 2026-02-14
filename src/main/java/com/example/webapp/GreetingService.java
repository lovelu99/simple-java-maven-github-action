package com.example.webapp;

/**
 * Small unit-testable class to keep servlet logic simple.
 */
public class GreetingService {

    public String greet(String name) {
        String safe = (name == null) ? "" : name.trim();
        if (safe.isEmpty()) {
            safe = "world";
        }
        return "Hello, " + safe + "!";
    }
}
