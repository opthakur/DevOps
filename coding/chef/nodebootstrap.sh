#!/bin/bash
knife ssl fetch
knife bootstrap 192.168.33.12 -x vagrant -P vagrant --sudo -N node1