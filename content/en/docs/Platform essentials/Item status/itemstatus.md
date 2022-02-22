---
title: "Item status"
linkTitle: "Item status"
weight: 20
---

FOLIO is implementing a three-part item state function. The three factors included are Availability; Needed for; and Process.

Once developed, the three factors for item state will interact together to drive functionality, and display status information on the item record. For example, an item that has an Availability value of “Checked Out” and a Needed for value of “Reserves” might trigger a process that routes the item to Course Reserves staff when returned, and prevents other patrons from requesting the item in the meantime.

Only Availability is currently implemented. In various FOLIO apps, this is labeled as *Item status*.

### Availability

An item’s *availability* describes information about where an item is or whether it can be circulated. In FOLIO, availability is currently labeled as *Item status*. 

Availability is a required value for an item. It cannot be edited directly; instead, the availability value is set by FOLIO processes  such as data import, ordering an item, checking an item in or marking an item missing.

An item’s availability controls whether it can be loaned and whether it can be requested, even if the applicable circulation rule would otherwise allow the item to circulate. If a staff member has appropriate permissions, they can override these loan and request restrictions.

### Needed for

*Needed for* is not yet implemented in FOLIO.

When implemented, *Needed for* will allow libraries to assign a workflow for an item to follow when it is needed for a specific staff or patron need. Some examples where *Needed for* might be used include item requesting; placing items on course reserve; or sending an item for binding. *Needed for* will be an optional value.

### Process
*Process* is not yet implemented in FOLIO.

When implemented, *Process* will describe a staff process that an item is in. Common processes might include Digitization; Item Repair; or Cataloging. *Process* will be an optional value.

## How Item Status Changes During Circulation
