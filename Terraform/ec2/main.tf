resource "aws_instance" "this" {
	for_each = var.instances
	ami                    = each.value.ami
  	instance_type          = each.value.instance_type
  	key_name               = var.key_name
  	subnet_id              = each.value.subnet_id
  	vpc_security_group_ids = each.value.security_groups

  	tags = merge({
    	Name = each.key
  }, var.tags)
}