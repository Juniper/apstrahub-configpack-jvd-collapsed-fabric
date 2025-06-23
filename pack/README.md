This Apstra Config Pack will deploy the Juniper-Validated-Design (JVD) for a Collapsed Fabric as defined in 
https://www.juniper.net/documentation/us/en/software/jvd/jvd-collapsed-dc-fabric-with-apstra/

The input parameters allow you to choose the Juniper model for your devices from a list of the supported models for
this JVD.  You can also choose your IP and ASN address ranges.

To complete the deployment once it is built, you will need to:

1 - Assign your chosen systems (and onboard them from Apstra if not done already) to the blueprint.
2 - Ensure your cabling map is accurate, either by performing the "Fetch LLDP discovered data" action, or by manually updating the link names.
3 - Perform the Commit.
