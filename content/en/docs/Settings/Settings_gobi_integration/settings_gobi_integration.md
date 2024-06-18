---
title: "Settings > GOBI integration"
linkTitle: "GOBI integration"
date: 2024-04-22
weight: 125
tags: ["subtopic"]   
---

The GOBI integration section of the Settings app defines your configuration for an integration with the provider GOBI Library Solutions. This integration supports the creation of FOLIO orders initiated from the GOBI order form.


## Permissions

In order to interact with GOBI integration settings, a user needs to be assigned the following permission:

*   **GOBI Integration: view and edit settings.**  This permission allows you to view and edit GOBI integration settings. 


## Implementation considerations
Libraries planning to implement the GOBI API integration will be required to work with GOBI and fill out an API mapping worksheet with the GOBI implementation team. Via this worksheet, a library will communicate the following to GOBI:
*   FOLIO Edge URL
*   FOLIO Edge API key
*   Local data field specifications
*   Validation lists for fund codes, location codes, and local data fields

Based on mapping decisions made with GOBI, a library will likely need to update the default mapping configurations within FOLIO. For example, the default configuration assumes that a library uses 'GOBI' as the organization code for GOBI Library Solutions within FOLIO. If a library uses a different organization code, they will need to update the **Default value** of 'GOBI' wherever it is specified.

## Settings > GOBI integration > Integration details > Mapping configuration

To view the mapping configuration files, open Settings > GOBI integration > Integration details > Mapping configuration. A list of existing mapping configuration files is listed on the **Configuration files** pane.

*   **Listed Electronic Monograph**
*   **Listed Electronic Serial**
*   **Listed Print Monograph**
*   **Listed Print Serial**
*   **Unlisted Print Monograph**
*   **Unlisted Print Serial**

Mappings for "Listed" formats indicate that a tile is available within the GOBI system for ordering. The mappings for "Unlisted" formats are invoked if a library submits an order for a title that does not appear in GOBI using the **Add Unlisted** option in the GOBI Order Cart.

## Viewing configuration files

Each configuration file contains default values that will populate fields on purchase orders created through this integration with GOBI.  To view a configuration file, click on the configuration file name in the **Configuration files** pane. To expand or collapse all accordions on the page, click **Expand all** or **Collapse all**  When expanded, each accordion section lists the following configuration information about each purchase order field:

**From field.**  GOBI transmits order information to FOLIO in XML format. To map a value from the GOBI order form, select the field name from the drop-down list:
*   Base Account
*   Sub Account
*   Title
*   Product ID
*   Product Qualifier
*   Publication Date
*   Publisher
*   Contributor
*   Fund Code
*   Location
*   Quantity
*   YBP Order Key
*   Order Placed
*   Unit Price
*   Currency
*   Local Data 1
*   Local Data 2
*   Local Data 3
*   Local Data 4
*   Custom Path

**Path.** The path string.  For all **From field** values in the drop-down list, this path string will automatically populate.  To manually enter a path string, select 'Custom Path' from the **From field** drop-down list. The formatting of a custom path depends upon the XML output from GOBI, so you may need to consult your GOBI rep for guidance on formatting a custom path.
**Default value.**  Enter a default value to apply to this field on the purchase order. Default values can serve as the primary entry for a field or as a backup option if the entry coming from a mapped GOBI path is not found. For example, within the default mapping congifuration, the **Order type** mapping uses a default value of 'One-time' or 'Ongoing' as the primary entry. The **Instructions to vendor** field specifies a path, but uses 'N/A' as a fallback default value.
**Translation.**  Select a method from the drop-down list to apply to an incoming text value for translation into a system recognized unique identifier. For example, select “Lookup organization” to link an incoming vendor code value of GOBI to the organization record containing the vendor code GOBI. Select one of the following translation methods:

*   **Lookup contributions UUID:** used when the **Path** or **Default value** in the **Contributor type** mapping contains one of the following: 'Personal name', 'Meeting name', or 'Corporate name'. This instructs FOLIO to perform a lookup of the appropriate UUID based on the specified label.
*   **Lookup expense class UUID:** use when the **Path** or **Default value** in the **Expense class** mapping contains an expense class code to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified code.
*   **Lookup acquisition method UUIDs:** use when the **Path** or **Default value** in the **Acquisition method** mapping contains an acquisition method name to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified name.
*   **Lookup acquisition unit UUIDs associated with name:** use when the **Path** or **Default value** in the **Acquisition unit** mapping contains an acquisition unit name to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified name.
*   **Lookup acquisition unit UUIDs associated with account:** if the organization record has accounts configured and those accounts are associated with acquisition units, the **Acquisition units** mapping can be configured to use the **From field** of 'Sub Account'. Use this **Translation** to complete the mapping.
*   **Lookup UUID of the (inventory) location record:** use when the **Path** or **Default value** in the **Location** mapping contains a location code to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified code.
*   **Lookup UUID of the material type:** use when the **Path** or **Default value** in the **Material type** mapping contains a material type name to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified label.
*   **Lookup fund UUID:** use when the **Path** or **Default value** in the **Fund ID** mapping contains a fund code to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified code.
*   **Lookup organization:** use when the **Path** or **Default value** in the **Vendor**, **Donor**, **Material supplier**, or **Access provider** mapping contains an organization code to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified code.
*   **Lookup UUID corresponding to the type of product ID:** use when **Path** or **Default value** in the **Product ID type** mapping contains a label, like 'ISBN', to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified label.
*   **Lookup suffix UUID for purchase order number:** use when **Path** or **Default value** in the **Suffix** mapping contains a label, like 'lib', to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified label.
*   **Lookup prefix UUID for purchase order number:** use when **Path** or **Default value** in the **Prefix** mapping contains a label, like 'lib', to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified label.
*   **Lookup purchase order line UUID by order line number:** use when **Path** or **Default value** in a mapping contains a purchase order line (POL) number, like '10000-1', to instruct FOLIO to perform a lookup of the appropriate UUID based on the POL number.
*   **Lookup config address:** use when the **Path** or **Default value** in the **Bill to** or **Ship to** mapping contains an address label to instruct FOLIO to perform a lookup of the appropriate UUID based on the specified code.
*   **Separating the ISBN qualifier**
*   **Truncation the ISBN qualifier:** used when mapping the **Product ID** from a GOBI path to ensure that qualifiers are not included in the **Product ID** field.
*   **To boolean:** use in field mappings for checkboxes. Specify 'true' as the **Default value** when the box should be checked. Specify 'false' as the **Default value** when the box should be unchecked.
*   **To date**
*   **To double:** used in field mappings for **Type** within a fund distribution. 
*   **To integer:** used in field mappings for whole number, like **Quantity physical** and **Quantity electronic**. 

**Translate default.**  Check this box to apply translation logic if a **Default value** is specified in the field mapping. Some fields accommodate a reference value or a text value while some require a reference value.  For example, the PO information > Vendor field mapping needs to contain a UUID reference value to link an organization record to the order.  If the default value for this mapping is 'GOBI', then this checkbox must be set to true since a translation must be applied to this default. When checked, FOLIO will look up the organization record's UUID for the record with 'GOBI' as the organization code.

## Editing configuration files

Each configuration file contains default values that will populate fields on purchase orders created through this integration with the GOBI ordering platform.  To edit a configuration file, follow these steps:

1. Click on the configuration file name in the **Configuration files** pane.

2. In the action menu, select **Edit.** The window title changes to Edit and all fields are now editable.  To enter a **Path** value, select **Custom path** in the **From field** drop-down list..

3. To expand all accordions on the page, click **Expand all.**  

4. To clear all field mappings, click the **Clear all field mappings** button.

5. Edit the mappings and default values as needed and click **Save & close**.


## Resetting default configuration

After editing a configuration file you can optionally reset the configuration back to the original default setup.  To reset a configuration file to the original default configuration, follow these steps:

1. Click on the configuration file name in the **Configuration files** pane.

2. In the action menu, select **Reset default configuration.**

3. **Confirm** the dialog prompt, “Resetting this configuration will delete all customizations and restore the default configuration file mappings.”

4. A green toast message confirms that the default configuration is restored.
