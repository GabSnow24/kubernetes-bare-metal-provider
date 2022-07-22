
output "master-node" {
  value = aws_instance.master-node.public_ip
}

output "worker-node-0" {
  value = aws_instance.worker-node-1.public_ip
}

output "worker-node-1" {
  value = aws_instance.worker-node-1.public_ip
}
