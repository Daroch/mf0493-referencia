# gestion-api

API REST de gestión militar de Poniente: grandes casas, casas vasallas, fortalezas y regimientos.
Proyecto de clase del módulo MF0493_3 (certificado IFCD0210, Centro San Luis, Bilbao).

Hecha con Spring Boot 4, Java 25 y MySQL 8. Se empaqueta como un JAR autoejecutable: el servidor
solo necesita Java 25 y la base de datos.

## Estado del repositorio por sesión

Cada rama `estado-sN` guarda cómo quedó el proyecto al terminar esa sesión. Para ver una:

```bash
git switch estado-s3
```

| Rama        | Sesión              | Qué añade                                                |
| ----------- | ------------------- | -------------------------------------------------------- |
| `estado-s2` | S2 · Git            | `.gitignore`, la API, README y datos de ejemplo en `db/` |
| `estado-s3` | S3 · Del IDE al JAR | Maven Wrapper (`.mvn/`)                                  |

## Requisitos

- **JDK 25** para compilar (por ejemplo, [Eclipse Temurin](https://adoptium.net/temurin/releases/)). Comprobar con `java -version`.
- **MySQL 8** con una base de datos `gestion`. En desarrollo, con Docker:
