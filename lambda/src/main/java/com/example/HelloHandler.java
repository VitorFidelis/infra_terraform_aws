package com.example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.SQSEvent;

public class HelloHandler implements RequestHandler<SQSEvent, Void> {

    @Override
    public Void handleRequest(SQSEvent event, Context context) {
        System.out.println("\u200B\uD83D\uDEA9\u200B INICIO DA LAMBDA");
        event.getRecords().forEach(message -> {
            String body = message.getBody();
            context.getLogger().log("Mensagem recebida: " + body);
        });
        System.out.println("\uD83C\uDFC1\u200B FIM DA LAMBDA");
        return null;
    }
}
