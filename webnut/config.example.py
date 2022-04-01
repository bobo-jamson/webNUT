# User-defined configuration.
# Rename this to config.py.

from .webnut import NUTServer

# Single server configuration, backwards compatible:
server = '127.0.0.1'
port = 3493
username = None
password = None

# Multi-server configuration:
servers = [
    NUTServer('192.168.1.3', 3493, None, None),
    NUTServer('192.168.1.6', 3493, None, None)
]
