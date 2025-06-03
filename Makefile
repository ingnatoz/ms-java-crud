rebuild:
	docker-compose build --no-cache java-app
	docker-compose up -d java-app

db-up:
	docker-compose up -d postgres

m-clean:
	./mvnw clean

m-package:
	./mvnw package

m-install:
	./mvnw clean install

s-run:
	./mvnw spring-boot:run

s-test:
	./mvnw test

help:
	@echo "rebuild   - Reconstruye el contenedor Java con --no-cache y lo levanta"
	@echo "db-up     - Levanta solo el contenedor de la base de datos en segundo plano"
	@echo "m-clean   - Limpia los archivos generados por Maven"
	@echo "m-package - Empaqueta el proyecto usando Maven"
	@echo "m-install - Compila y empaqueta el proyecto con Maven"
	@echo "s-run     - Levanta la aplicación Spring Boot"
	@echo "s-test    - Corre los tests del proyecto con Maven"