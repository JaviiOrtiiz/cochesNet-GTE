#!/bin/bash
docker run -d -v /home/orangepi/cochesNet-GTE:/app --restart always --name cochesnet-gte --privileged cochesnet-GTE
