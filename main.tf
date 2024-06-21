module app {
    source = "./module"
    namespace = "default"
    name = "wordpress"
    wait = false
    chart = "./application"
    values = [<<EOF

replicaCount: 3

image:
  repository: nginx
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
 
  EOF
  ]
}