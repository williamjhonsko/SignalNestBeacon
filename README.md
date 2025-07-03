# SignalNestBeacon

SignalNestBeacon enables services to emit lightweight presence beacons across the network, allowing distributed health signaling and dynamic service discovery.

## Features
- UDP-based beacon emitters and listeners.
- Real-time in-memory registry of live services.
- TTL-based cleanup of inactive signals.
- CLI tools for local network inspection.

## Usage
```bash
git clone https://github.com/your-org/SignalNestBeacon.git
cd SignalNestBeacon
python beacon/receiver.py &
python beacon/emitter.py
