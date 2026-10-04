# Networking Notes

These notes summarise the key networking concepts covered during the CoderCo Networking module.

---

## 1. Network Fundamentals

### Network Basics

Networks connect devices to enable communication and resource sharing. They form the foundation of internet communication and modern IT infrastructure.

### Network Types

- **LAN (Local Area Network)** - Connects devices within a smaller geographical area such as a home, office, or school.
- **WAN (Wide Area Network)** - Connects networks across larger geographical areas.

---

## 2. Network Devices

### Switches

Switches connect devices within a LAN and forward traffic to the appropriate device.

### Routers

Routers connect different networks and determine where network traffic should be sent.

### Firewalls

Firewalls control incoming and outgoing network traffic based on configured security rules.

---

## 3. IP Addressing

### IPv4

IPv4 uses 32-bit addresses.

Example:

`192.168.0.5`

IPv4 provides approximately 4.3 billion possible addresses.

### IPv6

IPv6 uses 128-bit addresses and provides a much larger address space than IPv4.

IPv6 addresses use hexadecimal values separated by colons.

---

## 4. MAC Addresses

A MAC address is a 48-bit identifier associated with a network interface.

Example:

`00:18:2B:XX:XX:XX`

MAC addresses operate at the **Data Link layer (Layer 2)** of the OSI model and are used for communication between devices on a local network.

---

## 5. Ports and Protocols

Ports are logical communication endpoints used to identify different network services running on a device.

Examples:

- **Port 80** - HTTP
- **Port 443** - HTTPS

A server can provide multiple network services from the same IP address by using different ports.

---

## 6. TCP and UDP

### TCP

TCP (Transmission Control Protocol) is connection-oriented.

Characteristics include:

- Establishes a connection before transmitting data
- Uses a handshake
- Provides reliable delivery
- Provides ordered delivery
- Can retransmit lost data
- Commonly used for web traffic and email

### UDP

UDP (User Datagram Protocol) is connectionless and has less overhead than TCP.

Characteristics include:

- Does not establish a connection before sending data
- Does not provide TCP-style acknowledgements
- Does not guarantee delivery
- Does not guarantee packet ordering
- Does not automatically retransmit lost data
- Commonly used where low latency is important

Examples include:

- DNS queries
- Streaming
- Online gaming

---

## 7. OSI Model

The OSI model consists of seven layers:

1. **Physical** - Cables, signals and physical network hardware
2. **Data Link** - Frames and MAC addresses
3. **Network** - IP addressing and routing
4. **Transport** - TCP and UDP
5. **Session** - Manages communication sessions
6. **Presentation** - Data formatting, encryption and encoding
7. **Application** - User-facing network protocols and services

---

## 8. TCP/IP Model

The TCP/IP model is a simplified four-layer networking model.

1. **Network Access** - Physical networking and local network communication
2. **Internet** - IP addressing and routing
3. **Transport** - TCP and UDP
4. **Application** - Protocols such as HTTP and DNS

---

## 9. DNS

### DNS Fundamentals

DNS (Domain Name System) translates human-readable domain names into IP addresses.

It can be thought of as the internet's phone book.

### DNS Components

Important DNS components include:

- **Recursive DNS servers** - Find DNS information on behalf of clients
- **Authoritative name servers** - Store the official DNS records for a domain
- **Zone files** - Contain DNS records for a domain
- **Domain registrars** - Manage domain name registration
- **DNS hosting providers** - Host and manage DNS records

### DNS Records

Common DNS records include:

- **A** - Maps a hostname to an IPv4 address
- **AAAA** - Maps a hostname to an IPv6 address
- **CNAME** - Creates an alias pointing to another hostname
- **MX** - Specifies mail servers for a domain
- **TXT** - Stores text information commonly used for verification and configuration

### DNS Resolution Process

A simplified DNS lookup follows this process:

`Client → Resolver → Root Server → TLD Server → Authoritative Server → IP Address`

The resulting IP address is then returned to the client.

---

## 10. Routing

### Routing Basics

Routing determines how packets travel between different networks.

Routers use **routing tables** to determine where traffic should be forwarded.

### Static Routing

Static routes are manually configured by an administrator.

They remain fixed until manually changed.

### Dynamic Routing

Dynamic routing allows routers to automatically learn and update routes using routing protocols.

### Routing Protocols

Examples include:

- **OSPF (Open Shortest Path First)** - Commonly used for routing within organisations and networks
- **BGP (Border Gateway Protocol)** - Used to exchange routing information between large networks and across the internet

---

## 11. Subnetting

Subnetting divides a larger network into smaller subnetworks.

Benefits include:

- Better network organisation
- More efficient IP address allocation
- Reduced broadcast domains
- Improved network management

### CIDR Notation

Example:

`192.168.1.0/24`

The `/24` means that the first **24 bits** represent the network portion of the address.

### Subnet Masks

Example:

`255.255.255.0`

The subnet mask determines which part of an IP address represents the network and which part represents the host.

### Binary Conversion

IPv4 addresses and subnet masks can be converted into binary to understand how network and host portions are calculated.

Subnetting calculations are based heavily on powers of 2.

---

## 12. NAT

NAT (Network Address Translation) translates IP addresses as traffic moves between networks.

It is commonly used to allow devices using private IPv4 addresses to communicate with the internet using a public IPv4 address.

### NAT Types

- **Static NAT** - One private IP address maps to one public IP address
- **Dynamic NAT** - Private addresses are translated using a pool of public addresses
- **PAT (Port Address Translation)** - Multiple devices share a public IP address and are distinguished using port numbers

### NAT Process

A typical home or office network may contain many devices using private IP addresses.

When those devices communicate with the internet, NAT translates their private addressing into public addressing.

---

## 13. Network Troubleshooting

### Troubleshooting Tools

#### ping

`ping` tests basic IP connectivity between devices.

#### traceroute

`traceroute` shows the network path or hops that traffic takes towards a destination.

#### nslookup

`nslookup` can be used to query DNS and troubleshoot name resolution.

#### dig

`dig` provides detailed DNS query information and can be used to investigate DNS records and resolution.

### Troubleshooting Methodology

Network problems should be investigated systematically.

A basic troubleshooting process can include:

1. Check physical connectivity
2. Check the device's IP configuration
3. Check the subnet mask
4. Check the default gateway
5. Test local network connectivity
6. Test connectivity to the gateway
7. Test external IP connectivity
8. Test DNS resolution
9. Check firewall rules
10. Check application or browser configuration
11. Review system and application logs