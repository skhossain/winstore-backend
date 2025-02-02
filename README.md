# WinStore Backend

## Description
A backend service for the WinStore e-commerce platform.

## Installation Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/skhossain/winstore-backend.git
   ```
2. Navigate to the project directory:
   ```bash
   cd winstore-backend
   ```
3. Install dependencies using Composer:
   ```bash
   composer install
   ```

## Running the Application
1. Set up your environment variables by copying the example file:
   ```bash
   cp .env.example .env
   ```
2. Generate the application key:
   ```bash
   php artisan key:generate
   ```
3. Run the migrations:
   ```bash
   php artisan migrate
   ```
4. Start the local development server:
   ```bash
   php artisan serve
   ```