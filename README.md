# Authentik Self-Hosted with Docker

![authentik-self-hosted](https://repository-images.githubusercontent.com/1070471675/fa9106df-8efd-4e28-82c3-a363e5164e0d)

This repository provides a `docker-compose` setup to run a self-hosted [Authentik](https://goauthentik.io/) instance. Authentik is a flexible, open-source Identity & Access Management (IAM) solution that provides Single Sign-On, support for various protocols, and a user-friendly interface.

This setup uses dedicated PostgreSQL and Redis containers and is pre-configured to join a shared Docker network, allowing easy integration with other self-hosted services.

## Key Features

-   **Comprehensive IAM Solution**: Manage users, groups, and permissions with a powerful and easy-to-use interface.
-   **Wide Protocol Support**: Supports OAuth 2.0, SAML, LDAP, and RADIUS for broad compatibility.
-   **Extensible & Customizable**: Use custom templates, policies, and integrations to fit your needs.
-   **Advanced Security**: Features like multi-factor authentication (MFA), passwordless login, and detailed audit logs.
-   **Outpost Integrations**: Easily put existing applications behind a secure proxy with forward authentication.
-   **Decoupled Services**: Uses separate, dedicated containers for PostgreSQL (`ak-psql`) and Redis (`ak-redis`) for better stability and management.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/AiratTop/authentik-self-hosted.git
    cd authentik-self-hosted
    ```

2.  **Create the shared network:**
    If it doesn't exist yet, create the shared Docker network:
    ```bash
    docker network create shared_network
    ```

3.  **Configure environment variables:**
    Create a `.env` file and add the following required variables. These are critical for securing your instance.
    ```env
    # A strong password for the Authentik database user
    PSQL_PWD=
    # A strong password for Redis
    REDIS_PWD=
    # A long, random, and secret string used for signing sessions
    AUTHENTIK_SECRET_KEY=
    ```

4.  **Start the services:**
    ```bash
    docker compose up -d
    ```
    After starting, Authentik will perform its initial setup. This might take a minute or two.

## Accessing Authentik

-   **Authentik Web UI:** [http://localhost:9000](http://localhost:9000)

When you first log in, Authentik will guide you through creating an `akadmin` user and setting up the initial configuration.

## Usage and Management

-   **Start Services:** `docker compose up -d`
-   **Stop Services:** `docker compose down`
-   **View Logs:** `docker compose logs -f`
-   **Restart:** `./restart-docker.sh` (Stops and starts the containers)
-   **Update Images:** `./update-docker.sh` (Pulls the latest Docker images and restarts the services)
-   **Backup:** `./backup.sh` (Creates a compressed backup of the PostgreSQL database)

## See Also

Check out other self-hosted solutions:

-   [**postgresql-self-hosted**](https://github.com/AiratTop/postgresql-self-hosted): A simple and robust PostgreSQL setup.
-   [**mysql-self-hosted**](https://github.com/AiratTop/mysql-self-hosted): A self-hosted MySQL instance.
-   [**clickhouse-self-hosted**](https://github.com/AiratTop/clickhouse-self-hosted): High-performance columnar database for analytics.
-   [**metabase-self-hosted**](https://github.com/AiratTop/metabase-self-hosted): Self-hosted Metabase on Docker for business intelligence and analytics.
-   [**qdrant-self-hosted**](https://github.com/AiratTop/qdrant-self-hosted): A vector database for AI applications.
-   [**redis-self-hosted**](https://github.com/AiratTop/redis-self-hosted): A fast in-memory data store, often used as a cache or message broker.
-   [**caddy-self-hosted**](https://github.com/AiratTop/caddy-self-hosted): A modern, easy-to-use web server with automatic HTTPS.
-   [**wordpress-self-hosted**](https://github.com/AiratTop/wordpress-self-hosted): Production-ready WordPress stack with MySQL, phpMyAdmin, and WP-CLI.
-   [**n8n-self-hosted**](https://github.com/AiratTop/n8n-self-hosted): Scalable n8n with workers, Caddy for auto-HTTPS, and backup scripts.
-   [**monitoring-self-hosted**](https://github.com/AiratTop/monitoring-self-hosted): Self-hosted monitoring stack with Prometheus and Grafana.
-   [**ollama-self-hosted**](https://github.com/AiratTop/ollama-self-hosted): Ready-to-use solution for running Ollama with the Open WebUI on Docker.
-   [**authentik-self-hosted**](https://github.com/AiratTop/authentik-self-hosted): A flexible, open-source Identity & Access Management (IAM) solution.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author

**Airat Halitov**

- Website: [airat.top](https://airat.top)
- GitHub: [@AiratTop](https://github.com/AiratTop)
- Email: [mail@airat.top](mailto:mail@airat.top)
- Repository: [authentik-self-hosted](https://github.com/AiratTop/authentik-self-hosted)
