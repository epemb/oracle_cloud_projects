locals {

pub_subnets = [
    {
        cidr_block                  = var.pub_cidr_block_1
        compartment_id              = data.hcp_vault_secrets_app.network_secrets.secrets["spoke_main_compartment_id"]
        vcn_id                      = module.vcn.vcn_id
        display_name                = "spoke-pub-subnet"
        prohibit_public_ip_on_vnic  = false
    }
]

}