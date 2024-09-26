package com.vida.mywebhook.mywebhook;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/webhook")
public class WebhookController {

    @PostMapping("/receive")
    public String receiveWebhook(@RequestBody String payload) {
        // Print the received payload to the console
        System.out.println("Received payload: " + payload);

        // Respond to the client
        return "Webhook received successfully!" + payload;
    }

    @PostMapping("/callback")
    public String callback(@RequestBody String payload) {
        // Print the received payload to the console
        System.out.println("call back Received payload: " + payload);

        // Respond to the client
        return "call back received successfully!" + payload;
    }
}
