package com.example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.SQSEvent;
import software.amazon.awssdk.services.sns.SnsClient;
import software.amazon.awssdk.services.sns.model.PublishRequest;

public class HelloHandler implements RequestHandler<SQSEvent, Void> {

    @Override
    public Void handleRequest(SQSEvent event, Context context) {
        System.out.println("\u200B\uD83D\uDEA9\u200B INICIO DA LAMBDA");
        String topicArn = System.getenv("SNS_TOPIC_ARN");
        SnsClient snsClient = SnsClient.create();

        for (SQSEvent.SQSMessage message : event.getRecords()) {

            String body = message.getBody();

            String formattedMessage =
                    "🚨 NOTIFICAÇÃO 🚨\n\n" +
                            "Payload recebido:\n" +
                            body + "\n\n" +
                            "Origem: SQS\n";

            PublishRequest request = PublishRequest.builder()
                    .topicArn(topicArn)
                    .message(formattedMessage)
                    .subject("Nova mensagem do SQS")
                    .build();

            snsClient.publish(request);
        }
        System.out.println("\uD83C\uDFC1\u200B FIM DA LAMBDA");
        return null;
    }
}
