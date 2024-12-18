package com.vida.mywebhook.mywebhook;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/webhook")
public class WebhookController {

    @PostMapping("/receive")
    public String receiveWebhook(@RequestBody String payload) {
        String prettyPayload=null;
        try {
            // Parse the payload as JSON and pretty-print it
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(payload);
            prettyPayload = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(jsonNode);

            // Print the pretty-printed JSON to the console
            System.out.println("Received payload: \n" + prettyPayload);
        } catch (Exception e) {
            System.out.println("Invalid JSON payload: " + e.getMessage());
        }

        // Respond to the client
        return "Webhook received successfully! \n" + prettyPayload;
    }

    @PostMapping("/callback")
    public String callback(@RequestBody String payload) {
        // Print the received payload to the console
        System.out.println("call back Received payload: " + payload);

        // Respond to the client
        return "call back received successfully!" + payload;
    }
}
