# ARM Unifi Controller on Ubuntu in Azure

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FARM-Unifi%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FARM-Unifi%2Fmaster%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

This ARM template and configuration was borrowed from https://redeploy.se/deploy-unifi-controller-in-azure/

It is no longer being maintained, and I needed it so I have cloned it, pruned the other projects out, and just kept the Unifi bits.

This ARM template installs and configures the Unifi Controller software on an Ubuntu VM.
It also creates and deploys a full Azure infrastructure configuration for the VM, including NSG ports using your public IP.

Click the above link and fill in the required info for install!

Access your Unifi controller via https://yourPublicIP:8443

For instructions on adoption, please see [this document](https://dl.ubnt.com/guides/UniFi/UniFi_Controller_V4_UG.pdf) starting on page 122.  DNS, DHCP, or SSH'ing directly into the AP are all valid.
