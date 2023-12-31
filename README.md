# MentalHealthApp
# Mental Health Support Network Application - MVP

## Introduction

This is the MVP for a Mental Health Support Network Application designed to provide essential services and features for mental health management. It includes user authentication, a database schema for storing essential data, API endpoints, basic AI integration for mood tracking, and data security measures.

## Core Features

- **User Authentication System**: Secure login/logout for therapists and clients.
- **Database Schema**: Stores user profiles, appointment data, session notes.
- **API Endpoints**: For registration, profile management, and appointment scheduling.
- **Basic AI Integration**: Minimal AI functionality for mood tracking and simple analytics.
- **Data Security Measures**: Encryption and secure data handling.

### Database Schema

1. **Users**: Information about therapists and clients (name, email, role).
2. **Appointments**: Details of appointments (time, date, therapist-client pairing).
3. **Session Notes**: Records notes from therapy sessions.
4. **Feedback**: User feedback on sessions or app usage.
5. **Notes**: Where clients can write about their feelings, used for mood tracking and analytics.

### Basic AI Integration

1. **Mood Prediction and Analysis**: Analyzes mood logs for patterns or triggers.
   - **Notes Entries**: Text analysis of user notes for mood indicators.
   - **Physical Health Data**: (Post-MVP) Integration with wearables for additional data like sleep patterns or heart rate.
2. **User Behavior Analysis**: Analyzes user interactions to enhance the app experience.
3. **Basic Recommendation Engine**: AI-driven suggestions based on mood log analysis.

## Getting Started with Makefile Commands

The included Makefile simplifies Docker and Hanami commands:

- **Start Docker Containers**: `make up`
- **Stop Docker Containers**: `make down`
- **Rebuild Docker Containers**: `make build`
- **Migrate Database**: `make migrate`
- **Open Hanami Console**: `make console`
- **Access PostgreSQL CLI**: `make psql`
- **Access PostgreSQL CLI for Testing**: `make psql-test`

## Running the Project

1. **Starting the Application**

   ```bash
   make up
   ```

2. **Setting Up the Database**

   After the containers start:

   ```bash
   make migrate
   ```

3. **Accessing Hanami Console**

   ```bash
   make console
   ```

4. **Accessing the PostgreSQL Database**

   For development database:

   ```bash
   make psql
   ```

   For test database:

   ```bash
   make psql-test
   ```

5. **Stopping the Application**

   ```bash
   make down
   ```
