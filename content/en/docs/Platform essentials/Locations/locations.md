---
title: "Locations"
linkTitle: "Locations"
date: 2022-01-12
weight: 50
---
In FOLIO, **locations** are used to describe where items are located in a library.

Locations are required for any library that wants to use holdings or item records in the Inventory app. Locations are used in workflows with service points, borrowing and returning items, charging fines, requesting items, providing remote storage, and data export for holdings and item records.

The location setup has four hierarchical elements - each level of the hierarchy must have at least one value in order to create a value at the next, more specific level. 

* **Institution.** An institution is the highest level of the FOLIO location hierarchy. An institution typically represents entities such as the college or university, though that is not a FOLIO requirement. You can create one or more institutions.
* **Campus.** A campus is the second highest level of the FOLIO location hierarchy, A campus typically represents distinct parts of an institution, like a physical or branch campus, or online programs, though that is not a FOLIO requirement.
* **Library.** A library is the third level of the FOLIO Location hierarchy. A library typically represents physical buildings on a campus, or domains of service on a virtual campus, though that is not a FOLIO requirement. 
* **Location.** A location is the fourth and most detailed level of the FOLIO Location hierarchy. A location typically represents specific shelving areas, like the stacks, reserves, or specific language collections, though that is not a FOLIO requirement.

In practice, most libraries represent physical locations in their location tree, but FOLIO does not have a requirement to do so. Libraries can represent locations in a variety of ways.

* A library could choose to describe their collection by the physical location of the stacks, such as 3rd Floor, N side, Aisle 1, Side A.
* A library could choose to group their locations by administrative structure - for example, one institution with two campuses, one for professional degree libraries and one for undergraduate program libraries.
* A library could choose to include their electronic items in their location structure, and have an institution that represents physical items, and an institution that represents electronic items, each with their own campus, library and location structure nested below.

## Permanent, temporary and effective locations
In Inventory, you can set permanent and temporary location values on a holdings and/or item record. A holding must have a value set for permanent location.

Using the values in the permanent and temporary location fields, FOLIO computes two **effective locations** - one on the holdings record, and one on the item record. Effective locations support workflows such as OAI-PMH extracts, putting items on hold, and checking items out to patrons. 

### Examples
Temporary locations can be used to support various library workflows. 

#### Example 1: Supporting a New Books section of the library

Smith University Library purchases a copy of _The Midnight Library_ by Matt Haig, a popular new book. They want _The Midnight Library_ to be shelved at the “Smith New Arrivals” location for three months, before it gets sent to its permanent location of “Smith Main Stacks.”
* When they order the item, library staff set the location on the PO line to “Smith Main Stacks”. This becomes the **holdings permanent location** for _The Midnight Library_.
* Using Data Import or Inventory workflows, staff then set the **item temporary location** for _The Midnight Library_ to “Smith New Arrivals”. FOLIO then sets the **item effective location** to “Smith New Arrivals”, and that location is used by FOLIO when the book circulates.
* After _The Midnight Library_ has been circulating for three months, library staff use Inventory or Data Import workflows to remove the item temporary location. That changes the **item effective location** to “Smith Main Stacks”, and FOLIO uses that location to circulate the item going forward.

#### Example 2: Supporting a library renovation

Pacific College is renovating their Arts Library. Staff need to move 5,000 items from the Arts Library to the Undergraduate Library during the nine month renovation. 
* Library staff use Data Import workflows to set a **holdings temporary location** of “Undergrad Stacks” on the 5,000 holdings records, and then physically move the items. 
* That changes the **item effective location** for all 5,000 items to “Undergrad Stacks”, and then FOLIO uses that location as they circulate. 
* When the renovation is over and the items are returned to the Arts Library, library staff use Data Import workflows to remove the **holdings temporary location** from all 5,000 items, and that changes their effective locations back to “Arts Library.” FOLIO uses that location to circulate the items going forward.

## Configuring Locations
To create the location tree, follow the steps outlined in [Settings \> Tenant.]({{ ref "Settings_tenant.md"}})

## Holdings and Item effective locations
FOLIO supports a **holdings effective location** and **item effective location**. Both fields are calculated automatically by FOLIO. 

### Holdings effective location
The holdings effective location is used to provide location information for holdings that are not always itemized, such as periodicals, microfilm, or in-process special collections. It is not used in item circulation workflows.

On the holdings record, there are three location fields:
* **Holdings permanent location** (required)
* **Holdings temporary location** (optional)
* **Holdings effective location** (computed value, set by FOLIO)

FOLIO sets the holdings effective location to the first value it finds in the following list:

1. Holdings temporary location
2. Holdings permanent location

Note that if your library is using SRS for MARC Holdings, you will not be able to edit the permanent holdings location field on the inventory record - that will only be editable in quickMARC. You will be able to set a holdings temporary location. 

Item effective location
The item effective location is used by FOLIO to know the current home location for an item, and for staff and patrons to understand where to find an item in the library. 

The item effective location is used in multiple apps, including Check out, Check in, Requests, and Users (when viewing loans and fee/fines).

On the item record, there are three location fields:
* **Item permanent location** (optional)
* **Item temporary location** (optional)
* **Item effective location** (computed value, set by FOLIO)

FOLIO sets the item effective location to the first value it finds in the following list:

1. Item temporary location
2. Item permanent location
3. Holding temporary location
4. Holding permanent location

Note that an item permanent location **does not need to be set** if the holding permanent location is set. **Item effective location** is what is used in circulation workflows, and it will inherit the holding permanent location if no location values are set directly on the item.
