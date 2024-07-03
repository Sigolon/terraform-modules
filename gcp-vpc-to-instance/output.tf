output "instance_ip" {
  description = "The external IP address of the compute instance"
  value       = module.compute_engine.instance_ip
}