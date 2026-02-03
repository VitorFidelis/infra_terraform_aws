package com.example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class HelloWorldHandler implements RequestHandler<String, String> {

    @Override
    public String handleRequest(String input, Context context) {
        return "Hello, World!";
    }
}