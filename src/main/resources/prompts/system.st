plugins {
	id 'java'
	id 'org.springframework.boot' version '3.4.1'
	id 'io.spring.dependency-management' version '1.1.7'
	id 'idea'
	id 'eclipse'
}

group = 'net.filecode'
version = '0.0.1-SNAPSHOT'

java {
	toolchain {
		languageVersion = JavaLanguageVersion.of(23)
	}
}

repositories {
	mavenCentral()
}

dependencies {
	implementation 'dev.langchain4j:langchain4j-open-ai-spring-boot-starter:1.0.0-alpha1'
	implementation 'dev.langchain4j:langchain4j-ollama:1.0.0-alpha1'
	implementation 'dev.langchain4j:langchain4j-spring-boot-starter:1.0.0-alpha1'
	implementation 'dev.langchain4j:langchain4j-embeddings-all-minilm-l6-v2:1.0.0-alpha1'

	implementation 'com.h2database:h2'
	implementation 'org.springframework.boot:spring-boot-starter-data-jpa'
	implementation 'org.springframework.boot:spring-boot-starter-web'
	implementation 'org.springdoc:springdoc-openapi-starter-webmvc-ui:2.5.0'
	testImplementation 'org.springframework.boot:spring-boot-starter-test'
	testRuntimeOnly 'org.junit.platform:junit-platform-launcher'
}

tasks.named('test') {
	useJUnitPlatform()
}