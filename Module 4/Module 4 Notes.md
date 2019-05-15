# Module 4 Notes

#### Virtual Networking

When adding second NICs you have to stop and de-allocate the VM first

When the VM is stopped/moved/reallocated the names of the NICs in the OS might change as they are randomly allocated (eth0 / eth1) but the MAC and the IP will stay the same. Target MAC or IP for scripts

#### Azure DNS

https://docs.microsoft.com/en-us/azure/dns/dns-getstarted-portal

azure private dns resolution

nslookup www.contoso.xyz ns1-08.azure-dns.com.

#### NSGs

