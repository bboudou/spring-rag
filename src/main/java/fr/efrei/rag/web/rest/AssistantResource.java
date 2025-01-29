package fr.efrei.rag.web.rest;

import fr.efrei.rag.service.AssistantIAService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AssistantResource {
    private final AssistantIAService assistantIAService;
    AssistantResource(AssistantIAService assistantIAService) {
        this.assistantIAService = assistantIAService;
    }
    @PostMapping("/assistants/chat")
    public String chat(@RequestBody String query) {
        return assistantIAService.chat(query);
    }
}
