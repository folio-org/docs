---
title: "Settings > GOBI integration"
linkTitle: "GOBI integration"
date: 2022-12-02
weight: 125
tags: ["subtopic"]   
---

The GOBI integration section of the Settings app defines your configuration for an integration with the provider GOBI Library Solutions. This integration supports the creation of FOLIO orders initiated from the GOBI order form.


## Permissions

In order to interact with GOBI integration settings, a user needs to be assigned the following permission. For information on assigning permissions to users, see [Assigning permissions to a user record]({{< ref "/users.md#assigning-permissions-to-a-user-record" >}}).

*   **GOBI Integration: view and edit settings.**  This permission allows you to view and edit GOBI integration settings. 


## Settings > GOBI integration > Integration details > Mapping configuration

To view the mapping configuration files, open Settings > GOBI integration > Integration details > Mapping configuration. A list of existing mapping configuration files is listed on the **Configuration files** pane.

*   **Listed Electronic Monograph**
*   **Listed Electronic Serial**
*   **Listed Print Monograph**
*   **Listed Print Serial**
*   **Unlisted Print Monograph**
*   **Unlisted Print Serial**

## Viewing configuration files

Each configuration file contains default values that will populate fields on purchase orders created through this integration with GOBI.  To view a configuration file, click on the configuration file name in the **Configuration files** pane. To expand or collapse all accordions on the page, click **Expand all** or **Collapse all**  When expanded, each accordion section lists the following configuration information about each purchase order field:

**From field.**  To map a value from the GOBI order form, select the field name from the drop-down list:
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

**Path.** The path string.  For all **From field** values in the drop-down list, this path string will automatically populate.  To manually enter a path string, select Custom path from the **From field** drop-down list.
**Default value.**  Enter a default value to apply to this field on the purchase order.
**Translation.**  Select a method from the drop-down list to apply to an incoming text value for translation into a system recognized unique identifier. For example, select “Lookup organization” to link an incoming vendor code value of GOBI to the organization record containing the vendor code GOBI. Select one of the following translation methods:

*   Lookup contributions UUID
*   Lookup expense class UUID
*   Lookup acquisition method UUIDs
*   Lookup acquisition unit UUIDs associated with name
*   Lookup acquisition unit UUIDs associated with account
*   Lookup UUID of the (inventory) location record
*   Lookup UUID of the material type
*   Lookup fund UUID
*   Lookup organization
*   Lookup UUID corresponding to the type of product ID
*   Lookup suffix UUID for purchase order number
*   Lookup prefix UUID for purchase order number
*   Lookup purchase order line UUID by order line number
*   Lookup config address
*   Separating the ISBN qualifier
*   Truncation the ISBN qualifier
*   To boolean
*   To date
*   To double
*   To integer

**Translate default.**  Check this box to apply translation logic to the default value the user has entered for the field mapping. Some fields accommodate a reference value or a text value while some require reference value.  For example, the PO information > Vendor field mapping needs to contain a UUID reference value to link an organization record to the order.  If the default value for this mapping is “GOBI,” then this checkbox must be set to true since a translation must be applied to this default.

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