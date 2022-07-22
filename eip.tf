data "aws_eip" "kubernetes_node_0" {
    public_ip = var.eips["node_0"]
}

data "aws_eip" "kubernetes_node_1" {
    public_ip = var.eips["node_1"]
}

data "aws_eip" "kubernetes_master" {
    public_ip = var.eips["master"]
}

resource "aws_eip_association" "kubernetes_master_eip_association" {
    instance_id   = aws_instance.master-node.id
    allocation_id = data.aws_eip.kubernetes_master.id
}

resource "aws_eip_association" "kubernetes_worker_0_eip_association" {
    instance_id   = aws_instance.worker-node-0.id
    allocation_id = data.aws_eip.kubernetes_node_0.id
}

resource "aws_eip_association" "kubernetes_worker_1_eip_association" {
    instance_id   = aws_instance.worker-node-1.id
    allocation_id = data.aws_eip.kubernetes_node_1.id
}