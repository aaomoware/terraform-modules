A simple test scenario: create an ECS Task Definition

For every service the task definition json file will be the same, with the exception of the FAMILY attribute.

```hcl
[
    {
     "name": "consul",
     "image": "consul:latest",
     "portMappings": [
     {
        "containerPort": 8500,
        "hostPort": 8500,
        "protocol": "tcp"
     }
     ],
     "memory": 256,
     "memoryReservation": 64,
     "cpu": 128,
     "entryPoint": [
        "/usr/local/bin/docker-entrypoint.sh"
        ],
        "command": [
            "agent",
            "-client=0.0.0.0",
            "-data-dir=/consul/data",
            "-retry-join",
            "provider=aws tag_key=consul-prod tag_value=enable",
            "-datacenter=eu-west-1"
        ],
        "environment": [
            {
                "name": "CONSUL_BIND_INTERFACE",
                "value": "eth0"
            }
        ],
      "family": "consul-aws",
      "networkMode": "host"
    }
  ]
```
