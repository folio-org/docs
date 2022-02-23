In FOLIO, **locations** are used to describe where items are located in a library.

Locations are required for any library that wants to use holdings or item records in the Inventory app. Locations are used in workflows with service points, borrowing and returning items, charging fines, requesting items, providing remote storage, and data export for holdings and item records.

FOLIO uses a hierarchical location tree, with four levels:

* **Institution** - **Institution** is the highest level of the location hierarchy and will generally be the broadest value.
* **Campus** - **Campus** is the second highest level of the location hierarchy. It must be nested under an **institution**.
* **Library** - **Library** is the third highest level of the location hierarchy. It must be nested under a **campus**.
* **Location** - **Location** is the fourth and lowest level of the location hierarchy and must be nested under a **library**.

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

Smith University Library purchases a copy of “The Midnight Library” by Matt Haig, a popular new book. They want “The Midnight Library” to be shelved at the “Smith New Arrivals” location for three months, before it gets sent to its permanent location of “Smith Main Stacks.”
* When they order the item, library staff set the location on the PO line to “Smith Main Stacks”. This becomes the **holdings permanent location** for “The Midnight Library.”
* Using Data Import or Inventory workflows, staff then set the **item temporary location** for “The Midnight Library” to “Smith New Arrivals”. FOLIO then sets the **item effective location** to “Smith New Arrivals”, and that location is used by FOLIO when the book circulates.
* After “The Midnight Library” has been circulating for three months, library staff use Inventory or Data Import workflows to remove the item temporary location. That changes the **item effective location** to “Smith Main Stacks”, and FOLIO uses that location to circulate the item going forward.

#### Example 2: Supporting a library renovation

Pacific College is renovating their Arts Library. Staff need to move 5,000 items from the Arts Library to the Undergraduate Library during the nine month renovation. 
* Library staff use Data Import workflows to set a **holdings temporary location** of “Undergrad Stacks” on the 5,000 holdings records and then move the items. That changes the **item effective location** for all 5,000 items to “Undergrad Stacks”, and then FOLIO uses that location as they circulate. 
* When the renovation is over and the items are returned to the Arts Library, library staff use Data Import workflows to remove the **holdings temporary location** from all 5,000 items, and that changes their effective locations back to “Arts Library.”

## Configuring Locations
To create the location tree, follow the steps outlined in Settings \> Tenant.

## Holdings and Item effective locations
FOLIO supports a **holdings effective location** and **item effective location**. Both fields are calculated automatically by FOLIO. 


### Holdings effective location
The holdings effective location is used to provide location information for holdings that are not always itemized, such as periodicals, microfilm, or in-process special collections. It is not used in item circulation workflows.

On the holdings record, there are three location fields:
* **Holdings permanent location** (required)
* **Holdings temporary location** (optional)
* **Holdings effective location** (computed value, set by FOLIO)

FOLIO sets the holdings effective location to the first value it finds in the following list:

# Holdings temporary location
# Holdings permanent location

Item effective location
The item effective location is used by FOLIO to know the current home location for an item, and for staff and patrons to understand where to find an item in the library. 

The item effective location is used in multiple apps, including Check out, Check in, Requests, and Users (when viewing loans and fee/fines).

On the item record, there are three location fields:
* **Item permanent location** (optional)
* **Item temporary location** (optional)
* **Item effective location** (computed value, set by FOLIO)

FOLIO sets the item effective location to the first value it finds in the following list:

# Item temporary location
# Item permanent location
# Holding temporary location
# Holding permanent location

Note that an item permanent location *does not need to be set* if the holding permanent location is set. *Item effective location* is what is used in circulation workflows, and it will inherit the holding permanent location if no location values are set directly on the item.
