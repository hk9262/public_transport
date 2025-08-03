# 🚍 Public Transport Data Analysis (Bus & Metro Usage) - SQL Project

This project analyzes *public transportation usage data* (bus and metro) using SQL.  
It includes schema design, sample data, and analytical queries to extract actionable insights from transport patterns.

---


- **README.md** → Project overview

---

## 🗺 ER Diagram
### Visual ER Diagram:

```plaintext
+----------------+          +------------------+          +------------------+
|   Stations     |          |    Passengers    |          |  Transport Modes |
+----------------+          +------------------+          +------------------+
| station_id     |◄────┐    | passenger_id     |◄────┐    | mode_id          |
| name           |     └───▶| name             |     └───▶| mode_name        |
| location       |          | age              |          | mode_type (Bus/Metro)
+----------------+          | gender           |          +------------------+
                            +------------------+

+----------------+         +----------------+
|     Trips      |         |     Tickets     |
+----------------+         +----------------+
| trip_id        |         | ticket_id       |
| passenger_id   |────────▶| passenger_id    |
| station_id     |────────▶| trip_id         |
| mode_id        |         | fare_amount     |
| trip_date      |         | purchase_date   |
+----------------+         +----------------+
