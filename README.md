# 🌍 Travelia Laravel API

> Main backend API for the Travelia platform, responsible for user management, itineraries, legal requirements, and future advanced security features. Built with Laravel 11 and MySQL. Fully dockerized for local development.

> API principal del backend de la plataforma Travelia, encargada de la gestión de usuarios, itinerarios, requisitos legales y futuras funcionalidades avanzadas de seguridad. Construida con Laravel 11 y MySQL. Totalmente dockerizada para desarrollo local.

---

## 🚀 Technologies / Tecnologías

- 🧱 Laravel 11 (PHP 8.3)
- 🐬 MySQL
- 🐳 Docker + Docker Compose
- 📄 Swagger (planned)
- 🛡️ Laravel Sanctum (planned)
- 🧠 Laravel Fortify (planned)

---

## 📦 Local setup / Instalación local

### 1. Clone the repo / Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/travelia-laravel-backend.git
cd travelia-laravel-backend
```

✅ All setup steps (env, key, dependencies, migrations) are automatically handled by the Docker entrypoint script.

✅ Todos los pasos de configuración (env, clave, dependencias, migraciones) se ejecutan automáticamente mediante el entrypoint de Docker.

---

## 🐳 Using with Docker / Uso con Docker

### 1. Build and run / Construir y correr

```bash
docker compose up --build
```

### 2. Access the API / Acceder a la API

[http://localhost:8000](http://localhost:8000)

### 3. Access Adminer (optional) / Acceder a Adminer (opcional)

[http://localhost:8081](http://localhost:8081)

---

## 🔐 Key Endpoints / Endpoints importantes

> Coming soon: authentication endpoints and secured user flow with Sanctum and Fortify.

> Próximamente: endpoints de autenticación y flujo de usuario seguro con Sanctum y Fortify.

---

## 📁 Project structure / Estructura del proyecto

```
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   ├── Middleware/
│   ├── Models/
│   ├── Services/
│   ├── Events/
│   ├── Listeners/
├── config/
├── database/
│   ├── migrations/
│   ├── seeders/
├── routes/
│   └── api.php
├── tests/
│   ├── Feature/
│   └── Unit/
├── docker/
│   ├── entrypoint.sh
│   └── php.ini
├── Dockerfile
├── docker-compose.yml
└── .env
```

---

## 🧪 Testing / Pruebas

```bash
php artisan test
```

_Uses PHPUnit for unit and feature testing._

_Se usa PHPUnit para pruebas unitarias y funcionales._

---

## 📜 License / Licencia

MIT
