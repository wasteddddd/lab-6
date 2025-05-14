package com.example;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class AppTest {

    @Test
    public void testAddition() {
        int sum = 2 + 3;
        assertEquals(5, sum);
    }

    @Test
    public void testMultiplication() {
        int product = 2 * 3;
        assertEquals(6, product);
    }
}
