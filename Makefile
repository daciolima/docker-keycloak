# Essas funções fornecem um conjunto de comandos úteis para gerenciar o ambiente de desenvolvimento usando o Docker Compose.


# Keycloak
# Inicia os contêineres definidos em modo detached.
docker-keycloak-up:
	docker-compose -f docker-compose-keycloak-16-1-1.yaml up -d
	
# Constrói e inicia os contêineres definidos em modo detached.	
docker-keycloak-build:
	docker-compose -f docker-compose-keycloak-16-1-1.yaml up --build -d

# Exibe os logs dos contêineres definidos com um limite de 100 linhas.
docker-keycloak-logs:
	docker-compose -f docker-compose-keycloak-16-1-1.yaml logs -f --tail=100

# Executa os targets `docker-keycloak-build` e `docker-keycloak-logs` sequencialmente.
docker-keycloak-build-logs: docker-keycloak-build docker-keycloak-logs

# Para a execução dos contêineres definidos.
docker-keycloak-stop:
	docker-compose -f docker-compose-keycloak-16-1-1.yaml stop

# Para e remove os contêineres, redes e volumes definidos.
docker-keycloak-down:
	docker-compose -f docker-compose-keycloak-16-1-1.yaml down
