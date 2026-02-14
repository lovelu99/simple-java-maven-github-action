package com.example.webapp;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class GreetingServiceTest {

    @Test
    void greet_defaults_to_world() {
        GreetingService svc = new GreetingService();
        assertEquals("Hello, world!", svc.greet(null));
        assertEquals("Hello, world!", svc.greet(""));
        assertEquals("Hello, world!", svc.greet("   "));
    }

    @Test
    void greet_trims_name() {
        GreetingService svc = new GreetingService();
        assertEquals("Hello, Ashequr!", svc.greet("  Ashequr  "));
    }
}
