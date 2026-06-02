---
title: "Job profiles"
linkTitle: "Job profiles"
weight: 10
tags: ["subtopic"]
aliases: ['/docs/metadata/additional-topics/job-profiles/jobprofiles/']
---
# How to create job profiles

## How profiles work together

Job profiles are assembled from several different types of sub-profiles. These components lay out a logical order of actions on incoming records. Incoming data for job profiles must be either in MARC or EDIFACT format. A job profile takes a file of MARC or EDIFACT data and processes it per each step specified by the match, action, and field mapping sub-profiles.

![Diagram of Job profile that contains one match profile linked to two action profiles.](../job_profiles.jpg)

## Example job profile structures

### Overlay on an instance and create attached holdings and item records (incoming MARC record)

In this scenario, a suppressed instance already exists for the title, created by the Acquisitions team and linked to a purchase order line (POL) in the Orders app. The cataloger is overlaying this instance with the finalized catalog record while simultaneously creating holdings and item data for it.

* **Match profile (instance)** — Incoming `949$a` to instance HRID
* **Action profile (instance)** — Update instance (uses default MARC-Instance mapping)
    * **Field mapping (instance)** — Set Instance status to “Cataloged”; enter today’s date in *Cataloged date*
* **Action profile (holdings)** — Create attached holdings record
    * **Field mapping (holdings)** — Set permanent location to “Main”; map `050_4` to Call number
* **Action profile (item)** — Create item record attached to holdings
    * **Field mapping (item)** — Assign *Can Circulate* as permanent loan rule

### Remove existing 856 fields from a batch of e-resource records (incoming MARC record)
In this scenario, Acquisitions is creating an order and then creating a suppressed instance to link to that order. See the Field mapping section for more details about the specific placement of field mapping profiles that modify incoming MARC.

* **Action profile (MARC SRS)** — Modify incoming MARC data
    * **Field mapping profile (MARC SRS)** — Delete all existing `856` fields
* **Action profile (instance)** — Create instance (uses default MARC-Instance mapping)
    * **Field mapping (instance)** — Set Instance status to “Uncataloged” and mark *Suppress*

### Overlay existing instances to transform call numbers in holdings (incoming MARC record)
In this scenario, a group of titles needs new call numbers. The record subset is identified in Inventory or Lists, exported from Data Export (using a profile that puts holdings HRIDs in the `960$f`), modified in MarcEdit, and imported back into Data Import to effect the change.

* **Match profile (MARC to instance)** — Incoming `001` to instance HRID
    * **Match profile (MARC to holdings)** — Incoming `960$f` to holdings HRID
        * **Action profile (holdings)** – Update holdings
            * **Field mapping (holdings)** – Map `050_4` to call number field

## Types of sub-profiles

### Match profiles

* **Optional** — Only needed if job profile operates on existing records in Inventory
* Designates a match point between incoming data and a FOLIO record or SRS field, which allows overlay on or updates to existing records
* Can be **nested** for cascading logic
   * Example: An initial match on an instance HRID can implement an action profile/field mapping pair to update an instance, then a secondary match profile can match on an attached holdings record and implement another action profile/field mapping to update the holdings

### Action profiles

* **Required** — Defines **what** operation to perform and **on what** type of record
   * Example: Create item record, Update instance
* Must be **paired** with a **field mapping profile** that specifies how to handle the incoming data
   * Example: a field mapping for a holdings record can be combined with an action profile that updates holdings records
* Action profiles can only be associated with one field mapping profile so must be created for each specific scenario

### Field mapping profiles

* **Required** — Highly customizable mappings that can insert incoming data into Inventory record fields
* Insert incoming data into Inventory record fields
   * Example: a field mapping for a holdings record can take location information from a `999` in an incoming MARC record and use that to set the permanent location of a resource in a FOLIO holdings record

Note: Data export profiles can be an important counterpart to field mappings. For instance, a Data export job profile could map the holdings permanent location code to a `960$a` and a related Data import job would then use that `960$a` as a match point for a match profile
* Must be **paired with** an action profile
* Can be associated with more than one action profile
* Each of these must be created and saved separately, then they are combined into an overarching job profile

Note: It can be a helpful practice to give each component part a shared name element so they are more easily searched on and identifiable

## Creating a job profile

All sub-profiles must be created before creating a job profile. 
**_Detailed guides for sub-profile creation are forthcoming._**

### TIPS
* Establish a naming convention for job profiles (i.e. ERM1, ERM2, CAT1, CAT2) that indicate their purpose and make them easier to refer to
* Make descriptions detailed (e.g., "Matches on holdings HRID in `960$f`; updates holdings electronic access from `960$c`; Used for transfer workflow")
* You can edit existing job profiles, but you **cannot reorder sub-profiles** - sub-profiles can only be added or removed

**For steps to create a job profile see [Settings documentation](../settings/settings_data_import/settings_data_import/)**
