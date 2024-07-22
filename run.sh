#!/bin/bash
docker run -d -v /home/orangepi/cochesNet-gte:/app --restart always --name cochesnet-gte --privileged cochesnet-gte
