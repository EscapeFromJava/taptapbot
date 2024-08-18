package com.reske.taptapbot.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.Map;

@Data
@Configuration
@ConfigurationProperties(prefix = "keyboard")
public class KeyboardConfiguration {

    private Map<String, String> mainMenu;

}
