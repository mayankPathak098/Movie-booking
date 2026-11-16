# 🎬 Movie Booking System with Process Synchronisation & Availability Module
### Graphic Era University • DBMS & OS Project Based Learning (PBL) Engine
*Author: Mayabk Pathak

---

## 🌟 Executive Overview & Classy Aesthetic

**Movie Booking System with Process Synchronisation** is a full-stack, luxury cinematic booking engine and interactive academic demonstration suite. Designed with a **"CinéNoir & Gold"** visual language, it brings the robustness of low-level C++ systems programming (process synchronization, POSIX threads, mutex locking, process isolation via fork/waitpid, signal handling) and relational database management (MySQL in XAMPP) into an intuitive, ultra-polished application.

- **Design Language**: Deep obsidian glassmorphism (`#06080d`), Champagne Gold & Amber accents, curved illuminated cinema screen with ambient light projection beams, and realistic 3D luxury recliner seats.
- **Academic Focus**: Interactive live visualizer for **Operating Systems (Multithreading, Mutex critical sections, Process Forking, Signal Handling)** and **Database Management Systems (3NF Schema, Relational Integrity, ACID Transaction logging)**.

---

## 📽️ Key Features & Modules

### 1. 💺 Real-time Cinema Hall & Seat Availability Matrix
- **Curved Projection Screen**: Visual curved display with top ambient light cone simulating the real theatre projection beam.
- **Three-Tier Seating Grid** (matching C++ `Screen.cpp` & `PriceCalculator.cpp`):
  - **Platinum Section (VIP Recliner • ₹400)**: Top rows, luxury extra-wide recliners with ambient purple glow.
  - **Gold Section (Prime Club • ₹300)**: Middle rows, executive comfort with champagne gold accents.
  - **Silver Section (Classic View • ₹200)**: Front rows, silver-rimmed classic theatre seats.
- **Screen 1 & Screen 2 Support**: Screen 1 features 15 seats (5 Silver, 5 Gold, 5 Platinum); Screen 2 features 18 seats (6 Silver, 6 Gold, 6 Platinum).
- **Interactive States**:
  - `Available`: Interactive hover glow displaying seat number, tier, and price.
  - `Selected`: Radiant gold pulsing glow with checkmark.
  - `Booked`: Dark titanium finish with lock badge (unclickable).
- **Dynamic Selection Dock**: Real-time seat chips, 1-click removal, subtotal, 18% GST calculation, and instant checkout.

### 2. 🎞️ Movie Showcase & Multi-Showtime Scheduling
- Cinematic movie cards for blockbusters (*Interstellar*, *Swapped*, *Inception*, *Oppenheimer*, *Dune: Part Two*).
- Direct showtime switcher (e.g. Screen 1 at 09:00 AM, Screen 2 at 10:00 AM, etc.).

### 3. 🎫 Cinema Boarding Pass & Thermal Ticket Printer
- High-resolution boarding pass ticket with perforated tear stubs, realistic barcode, QR code security hash, and cinema seal.
- **Print Ticket / Save PDF**: Print-optimized stylesheet (`@media print`) rendering a clean, physical cinema stub.
- **1-Click Cancellation**: Instant release of seats back to the hall pool and database state transition.

### 4. 💳 Multi-Gateway Checkout
- **UPI**: Dynamic QR code scanner + instant UPI ID (`pvr.multiplex@icici`).
- **Credit Card**: Realistic glassmorphic card preview.
- **Cash Counter**: Box Office counter voucher slip generation.

---

## 🧠 OS & DBMS Academic PBL Demonstration Suite

Accessible via the top navigation or the floating terminal button, the **DBMS & OS Lab** provides interactive proof of all concepts implemented in `DBMS_OS_PBL`:

| OS / DBMS Concept | C++ Backend Implementation | Frontend Live Demonstration |
| :--- | :--- | :--- |
| **Concurrency & Mutex** | `std::mutex seatMutex`, `std::lock_guard` | **Live Race Simulator**: Spawns Thread-A (Ayush) and Thread-B (Sneha) competing for the exact same seat at the same millisecond; demonstrates mutex locking, critical section isolation, and race condition prevention. |
| **Process Isolation** | `pid_t pid = fork()`, `waitpid()` | **Child Process Visualizer**: Shows how thermal ticket rendering is offloaded to a child PID to keep parent thread non-blocking, and parent cleans up zombie processes. |
| **Multithreaded Startup** | `std::async(launch::async, ...)` | **Parallel Loading Benchmark**: Demonstrates concurrent execution of `loadMoviesFromDB` and `loadShowDataFromDB` vs sequential. |
| **Signal Handling** | `signal(SIGINT, handleSigInt)` | **SIGINT Simulator**: Simulates `Ctrl + C`, flushing buffer to `booking.log` and closing MySQL connection pool gracefully. |
| **ACID Relational DB** | MySQL 8.0 with 9 relational tables | **Live SQL Console**: Displays real-time generated SQL statements (`SELECT`, `INSERT`, `UPDATE`) with syntax coloring for every action. |
| **Activity Logging** | `Logger::getInstance()->log()` | **Real-time Terminal Stream**: Logs every lock acquisition, booking, cancellation, and signal with timestamps. |

---

## 🗄️ Database Schema (9 Relational Tables)

1. `customers` (`cust_id`, `name`, `phone_no` [UNIQUE])
2. `movies` (`movie_id`, `title`, `language`, `duration_mins`)
3. `screens` (`screen_id`, `screen_number`, `silver_count`, `gold_count`, `platinum_count`)
4. `seats` (`seat_id`, `screen_id` FK, `seat_number`, `seat_type`)
5. `shows` (`show_id`, `movie_id` FK, `screen_id` FK, `start_time`, `end_time`)
6. `show_seats` (`show_seat_id`, `show_id` FK, `seat_id` FK, `seat_number`, `seat_type`, `status`)
7. `bookings` (`booking_id`, `cust_id` FK, `show_id` FK, `total_amount`, `booking_status`, `booked_at`)
8. `booking_seats` (`id`, `booking_id` FK, `show_seat_id` FK)
9. `payments` (`payment_id`, `booking_id` FK, `amount`, `payment_method`, `paid_at`)

---

## 🚀 Quick Start / How to Run

### Method 1: Instant Browser Launch (Zero dependencies!)
Simply double-click [`index.html`](file:///c:/Users/kriya/OneDrive%20-%20Graphic%20Era%20University/Desktop/availability%20module/index.html) in your file explorer. It opens directly in Chrome, Edge, or Firefox with full interactivity and local state persistence!

### Method 2: Windows Batch Launcher
Double-click [`start.bat`](file:///c:/Users/kriya/OneDrive%20-%20Graphic%20Era%20University/Desktop/availability%20module/start.bat). This starts the local server and automatically launches your default web browser to `http://localhost:3000`.

### Method 3: Using Node.js CLI
```bash
# In the project directory:
node server.js
```
Then visit [http://localhost:3000](http://localhost:3000) in your browser.

---

## 📁 Project Structure

```
movie-booking-system-with-process-synchronisation/
├── index.html                   # High-end cinematic single-page application (Tailwind, Lucide)
├── app.js                       # Business logic, state engine, POSIX Mutex & fork() simulator
├── style.css                    # Custom CinéNoir styling, 3D seats, screen glow, ticket perforations
├── server.js                    # Node.js Backend Server (XAMPP MySQL live synchronization)
├── start.bat                    # 1-click Windows launcher
├── package.json                 # Project dependencies (mysql2)
├── schema.sql                   # MySQL Database Schema
├── cinema_booking_dump.sql      # Full database snapshot and data dump
├── README.md                    # Comprehensive documentation and viva guide
└── cpp-backend/                 # C++ Core Engine with Process Synchronization & Forking
    ├── Main.cpp
    ├── BookingService.cpp / .h
    ├── Cinema.cpp / .h
    ├── Customer.cpp / .h
    ├── DBConnection.cpp / .h
    ├── Logger.cpp / .h
    ├── Movie.cpp / .h
    ├── Payment.cpp / .h
    ├── PriceCalculator.cpp / .h
    ├── Screen.cpp / .h
    ├── Seat.cpp / .h
    ├── Show.cpp / .h
    ├── ShowSeat.cpp / .h
    ├── TicketPrinter.cpp / .h
    └── Makefile
```
