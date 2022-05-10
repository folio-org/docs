---
title: "Item status"
linkTitle: "Item status"
weight: 20
---

FOLIO is implementing a three-part item state function. The three factors included are Availability; Needed for; and Process.

Once developed, the three factors for item state will interact together to drive functionality, and display status information on the item record. For example, an item that has an Availability value of “Checked Out” and a Needed for value of “Reserves” might trigger a process that routes the item to Course Reserves staff when returned, and prevents other patrons from requesting the item in the meantime.

Only Availability is currently implemented. In various FOLIO apps, this is labeled as **Item status**.

### Availability

An item’s **availability** describes information about where an item is or whether it can be circulated. In FOLIO, availability is currently labeled as **Item status**. 

Availability is a required value for an item. It cannot be edited directly; instead, the availability value is set by FOLIO processes  such as data import, ordering an item, checking an item in or marking an item missing.

An item’s availability controls whether it can be loaned and whether it can be requested, even if the applicable circulation rule would otherwise allow the item to circulate. If a staff member has appropriate permissions, they can override these loan and request restrictions.

### Needed for

**Needed for** is not yet implemented in FOLIO.

When implemented, **Needed for** will allow libraries to assign a workflow for an item to follow when it is needed for a specific staff or patron need. Some examples where **Needed for** might be used include item requesting; placing items on course reserve; or sending an item for binding. **Needed for** will be an optional value.

### Process
**Process** is not yet implemented in FOLIO.

When implemented, **Process** will describe a staff process that an item is in. Common processes might include Digitization; Item Repair; or Cataloging. **Process** will be an optional value.

## How Item Status Changes During Circulation

If a FOLIO library is depending on an item’s status to communicate information to patrons and control how that item is used, they should be aware of how item statuses change as part of circulation (requesting, check out, and check in.)

* If an item is requested by a patron, the item status may change to **Paged**, or if the item is currently on loan, it may change to **In transit** when the item is returned. 
* If an item is checked out to a patron, the item status will change to **Checked out**.
* When an item is checked in, the item status may change to **Available** or **In Transit**, depending on the status it has or where it was located when it is scanned in the Check In app. 
 
Items in some statuses will warn library staff members that the item status is going to change, and ask them to confirm check in before proceeding.

{{% alert title="Item statuses do not automatically revert" color="info"%}}
Importantly, FOLIO does not automatically reset an item status to what it was before it circulated. If your library uses item status to communicate information about an item, and then the item circulates, you will need to develop workflows to manually restore the item’s status once it is returned.                
{{% /alert %}}

For example:

Suppose a library decides to use the item status **Restricted** to indicate that a certain collection should only be used if patrons are pre-approved for access. If the library staff member then checks out an item with a **Restricted** status to an approved patron, the status of that item will change to **Checked out**. 

When the item is checked back, the status will change to **Available** or **In Transit**; FOLIO will not automatically change the status to **Restricted**. The library would need to use reporting tools or other workflows to identify the item when it returned and change the status back to **Restricted**.

## Currently implemented item statuses

|Item Status Name|Description|Apps that use this item status|Can the item be checked out?|Can the item be requested?|
|---|---|---|---|---|
|Aged to lost|The item was borrowed by a patron who did not return it; after a defined time frame, the item is marked as aged to lost and the patron is usually charged to replace the item.|This status is set automatically by FOLIO system processes and cannot be manually set in an app.|An **Aged to lost** item cannot be checked out to a patron; this restriction cannot be overridden.|An **Aged to lost** item cannot be recalled, placed on hold, or paged.|
|Available|The item is ready for circulation.|An item can be marked as **Available** by the Inventory, Check In, or Data Import apps. The Inventory app automatically sets an item as **Available** if an item record is created manually in the app.|An **Available** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **Available** item cannot be recalled or placed on hold; it can be paged.|
|Awaiting delivery| The item has been requested for delivery, but is not yet checked out to the patron and in the delivery process. This item status generally indicates a problem with delivery; an item that is out for delivery will have a status of **Checked out**.|This status is set by the Check in app.| An **Awaiting delivery** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **Awaiting delivery** item can be recalled and can be placed on hold; it cannot be paged.|
|Awaiting pickup|The item is requested and is now at the pickup location, waiting for the requester to borrow the item.|An item is marked **Awaiting pickup** by the Check in app.|An **Awaiting pickup** item can be checked out to the requesting patron; when that occurs, the item status changes to **Checked out**.|An **Awaiting pickup** item can be recalled and can be placed on hold; it cannot be paged.|
|Checked out|The item is on loan to a patron.|An item is automatically  marked as **Checked out** by the Check out app only.|A **Checked out** item is already in a checked out state; trying to check it out again will be prevented.|A **Checked out** item can be recalled and can be placed on hold; it cannot be paged.|
|Claimed returned|A patron borrowed the item and has told the library that they returned the item, but there is no record in FOLIO of the item being returned and the item cannot be found. Libraries can use the **Claimed returned** item status in workflows while they search for the item.|An item can be marked **Claimed returned** in the Users app.|A **Claimed returned** item cannot be checked out to a patron; this restriction cannot be overridden.|A **Claimed returned** item cannot be recalled, placed on hold, or paged.|
|Declared lost|A patron borrowed the item and has told the library that they will be unable to return the item. Generally this is used when a patron has lost an item or it has been damaged beyond repair, but the patron does not want to wait for the item to age to lost automatically.|An item can be marked **Declared lost** in the Users app.|A **Declared lost** item cannot be checked out to a patron; this restriction cannot be overridden.|A **Declared lost** item cannot be recalled, placed on hold, or paged.|
|In process|The item has been received at the library, but is not yet ready to circulate.|An item is automatically marked as **In process** when it is received through the Receiving app. Items can also be marked as **In process** through the Data Import app.|An **In process** item can be checked out to a patron; if that occurs, the item status changes to **Checked out**.|An **In process** item can be recalled and can be placed on hold; it cannot be paged.|
|In process (not requestable)|The item is being worked on by library staff and patrons cannot request it.|An item can be marked **In process (not requestable)** through the Inventory or Data import apps.|An **In process (not requestable)** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **In process (not requestable)** item cannot be recalled, placed on hold, or paged.|
|Intellectual item|The item is a placeholder or dummy record; a physical item does not exist. Libraries can use this for electronic item records; for analytics management; or for any scenario where they need an item record for something that does not physically exist. |An item can be marked **Intellectual item** through the Inventory or Data import apps.|An **Intellectual** item cannot be checked out to a patron; this restriction cannot be overridden.|An **Intellectual item** cannot be recalled, placed on hold, or paged.|
|In transit|The item is currently moving between two service points.|An item is automatically  marked as **In transit** by the Check in or Data import apps. If an item is marked as **In transit** by Data import, no service point information will display in the Inventory app.|An **In transit** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **In transit** item can be recalled and can be placed on hold; it cannot be paged.|
|Long missing|The item is not on loan to a patron and cannot be located. This status can be used with the related item status of **Missing** to allow libraries to do several searches for an item before declaring it withdrawn.|An item can be marked **Long missing** in the Users app or Inventory app.|A **Long missing** item can be checked out to a patron; FOLIO shows a warning to the staff member, and then allows the checkout if the staff member confirms they want to continue. When the checkout occurs, the item status changes to **Checked out**.|A **Long missing** item cannot be recalled, placed on hold, or paged.|
|Lost and paid|This item was borrowed by a patron who did not return it; the item was marked declared lost or aged to lost. The library and patron then resolved the associated fine. Once that resolution occurs, the item is marked as **Lost and paid**.|This status is set automatically by FOLIO system processes and cannot be manually set in an app.|A **Lost and paid** item can be checked out to a patron; FOLIO shows a warning to the staff member, and then allows the checkout if the staff member confirms they want to continue. When the checkout occurs, the item status changes to **Checked out**.|A **Lost and paid** item cannot be recalled, placed on hold, or paged.|
|Missing|The item is not on loan to a patron and cannot be found. This status is generally used if the library is still searching for the item or waiting to see if it reappears.|An item can be marked **Missing** through the Inventory or Data import apps.|A **Missing** item can be checked out to a patron; FOLIO shows a warning to the staff member, and then allows the checkout if the staff member confirms they want to continue. When the checkout occurs, the item status changes to **Checked out**.|A **Missing** item can be placed on hold; it cannot be recalled or paged.|
|On order|The item has been ordered, but has not yet been received.|An item is automatically  marked  as **On order** by the Orders app, when the order creates an item record, or through the Data Import app.|An **On order** item can be checked out to a patron; if that occurs, the item status changes to **Checked out**.|An **On order** item can be recalled and can be placed on hold; it cannot be paged.|
|Order closed|The order associated with the item was closed and the item was not received.|An item is automatically marked **Order closed** by the Orders app if an order is closed and the item is not yet received. It can also be marked **Order closed** through the Data import app.|An **Order closed** item can be checked out to a patron; FOLIO shows a warning to the staff member, and then allows the checkout if the staff member confirms they want to continue. When the checkout occurs, the item status changes to **Checked out**.|An **Order closed** item cannot be recalled, placed on hold, or paged.|
|Paged|The item had a status of **Available** and was then requested by a patron; the request process changes the item status to **Paged**.|This status is set automatically by FOLIO system processes and cannot be set manually in an app.|A **Paged** item can be checked out to the patron who requested it; when that occurs, the item status changes to **Checked out**.|A **Paged** item can be recalled and can be placed on hold; it cannot be paged since it already has a **Paged** status.|
|Unavailable|The item is not available to patrons.|An item can be marked **Unavailable** through the Inventory or Data import apps.|An **Unavailable** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **Unavailable** item cannot be recalled, placed on hold, or paged.|
|Unknown|The item’s availability is not known.|An item can be marked **Unknown** through the Inventory or Data import apps.|An **Unknown** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|An **Unknown** item cannot be recalled, placed on hold, or paged.|
|Restricted|The item is available, but the library wants to indicate that there are limits on its access.|An item can be marked as **Restricted** through the Inventory or Data import apps.|An **Restricted** item can be checked out to a patron; when that occurs, the item status changes to **Checked out**.|A **Restricted** item can be recalled and can be placed on hold; it cannot be paged.|
|Withdrawn|The item has been removed from the library’s collection.|An item can be withdrawn through the Inventory or Data import apps.|A **Withdrawn** item can be checked out to a patron; FOLIO shows a warning to the staff member, and then allows the checkout if the staff member confirms they want to continue. When the checkout occurs, the item status changes to **Checked out**.|A **Withdrawn** item cannot be recalled, placed on hold, or paged.|
