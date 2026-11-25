---
title: "Lists"
linkTitle: "Lists"
date: 2025-06-05      
weight: 525
---
**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may not be aligned with the current release of FOLIO.**

The Lists app provides actionable lists in FOLIO at the point of need. Some use cases include:


- Create a custom list when a report isn’t available in FOLIO;
- Create lists of records across apps and record types;
- Enable actions and workflows on a list of records;
- Access a set of pre-generated (canned) lists.
- Perform a cross-tenant query in ECS-enabled tenants. See [Cross-tenant queries: Definitions, Functionality, Limitations](https://docs.google.com/presentation/d/13LzVYXMvx8eWvRDcqHk5hXTLP-tGJIGL/edit#slide=id.p5) for more information about **Cross-tenant queries**.


Functionality of the Lists app includes:


* Lists persist, can be refreshed and edited;
* List data updated in near real-time;
* User-friendly process for building a query to create a list;
* Duplication of lists;
* Export records from a list as a .csv file;
* Each list can include up to 1.25 million records.


Definition of terms related to the Lists app:



- **Field**: The identifier used to query records.
- **FQM**: FOLIO Query Machine. The query functionality in FOLIO.
- **Operator**: The function applied in a query to match records by selected field and inputted value.
- **Query**: The search string used to generate a list that includes a field, operator, and value.
- **Record set**: The set (or list) of records retrieved through a query.
-  **Resource (EUREKA)**. An operation that can be performed in a FOLIO application.
- **Source**: The FOLIO account used to create and save a list.
- **Type (Settings)**. Capabilities that allow the user to manage FOLIO configurations administratively. For all Lists capabilities and capability sets, the Type is *settings*. 
- **Value**: The text and/or number(s) input to query records with a selected field and selected operator.


## Capabilities and Capability Sets

The Eureka platform, adopted in the Sunflower release, replaces permission sets with **Capabilities** and **Capability sets** for role-based management of user accounts. For more information about **Capabilities** and **Capability sets**, see [Roles Management with Eureka](https://folio-org.atlassian.net/wiki/x/BIATLw).

The following **Capabilities** allow interaction with the Lists app.

For all Lists capabilities:

- **Application** is *app-fqm*.
- **Type** is *settings*.

| permissionDisplayName (OKAPI) | Resource (EUREKA) | Action | 
| :----- | :----- | :-----: | 
| *Lists (Enable): Can view lists* | *Module Lists Enabled* | view | 
| *Lists (Edit): Can create, edit and refresh lists* | *Module Lists Refresh* | view | 
| *Lists (Delete): Can create, edit, refresh, and delete lists* | *Module Lists* | delete | 
| *Lists (Export): Can create, edit, refresh, and export lists* | *Module Lists Export* | view | 
| *Lists (Admin): All permissions* | *Module Lists* | manage |


## Supported fields by record type

In the Lists app, the **Fields** available for building a query and displaying as column headings depend on the selected **Record type** of the list.  For more information about supported fields by record type in the Lists app, see [Supported fields by List record type](https://folio-org.atlassian.net/wiki/x/aADJDw). 

**Record types** supported in the Lists app include:

- [Authority](#authority)
- [Budgets](#budgets)
- [Fee/Fine accounts with users](#feefine-accounts-with-users)
- [Fund with ledger](#fund-with-ledger)
- [Holdings](#holdings)
- [Instances](#instances)
- [Instances with MARC bibliographic](#instances-with-marc-bibliographic)
- [Invoice lines](#invoice-lines)
- [Invoices](#invoices)
- [Items](#items)
- [Loans](#loans)
- [Lost items requiring actual cost](#lost-items-requiring-actual-cost)
- [Order invoice analysis](#order-invoice-analysis)
- [Organizations](#organizations)
- [Purchase order lines](#purchase-order-lines)
- [Purchase order lines with titles](#purchase-order-lines-with-titles)
- [Purchase orders](#purchase-orders)
- [Receiving pieces](#receiving-pieces)
- [Receiving titles](#receiving-titles)
- [Transactions](#transactions)
- [Users](#users)
- [Users with fees/fines, loans](#users-with-feesfines-loans)
- [Users with manual blocks](#users-with-manual-blocks)
- [Users with open transactions](#users-with-open-transactions)
- [Voucher lines](#voucher-lines)
- [Voucher lines with fund](#voucher-lines-with-fund)
- [Voucher lines with invoice, fund, organization](#voucher-lines-with-invoice-fund-organization)
- [Vouchers](#vouchers)


### Authority

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? |
| :----- | :-----: | :-----: | 
| *Authority - Created date* | YES | YES |
| *Authority - Heading* | YES | YES |
| *Authority - Heading type* | YES | YES |
| *Authority - Identifiers* | NO | YES |
| *Authority - Identifier value* | YES | YES |
| *Authority - Identifier type* | YES | YES |
| *Authority - Natural ID* | YES | YES |
| *Authority - Notes* | NO | YES |
| *Authority - Notes — Note type* | YES | YES |
| *Authority - Notes — Note* | YES | YES |
| *Authority - See also from references* | YES | YES |
| *Authority - See also from reference — Tracing* | YES | YES |
| *Authority - See also from reference — Tracing type* | YES | YES |
| *Authority - See also from reference — Relationship type* | YES | YES |
| *Authority - Authority — See from references* | NO | YES |
| *Authority - See from reference — Tracing* | YES | YES |
| *Authority - See from reference — Tracing type* | YES | YES |
| *Authority - Source* | YES | YES |
| *Authority - Subject heading code* | YES | YES |
| *Authority - Updated date* | YES | YES |
| *Authority - UUID* | YES | YES |
| *Source file - Name* | YES | YES |
| *Created by user - Email* | YES | YES |
| *Created by user - Last name, first name* | YES | YES |
| *Created by user - Username* | YES | YES |
| *Updated by user - Email* | YES | YES |
| *Updated by user - Last name, first name* | YES | YES |
| *Updated by user - Username* | YES | YES |
| *MARC Authority - Created date* | YES | YES |
| *MARC Authority - External HRID* | YES | YES |
| *MARC Authority - Generation* | YES | YES |
| *MARC Authority - Leader record status* | YES | YES |
| *MARC Authority - MARC jsonb* | NO | YES |
| *MARC Authority - Matched UUID* | YES | YES |
| *MARC Authority - Order* | YES | YES |
| *MARC Authority - State* | YES | YES |
| *MARC Authority - Updated date* | YES | YES |

### Budgets

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? |
| :----- | :-----: | :-----: | 
| *Budget - Allocated* | YES | YES |
| *Budget - Allocation from* | YES  | YES |
| *Budget - Allocation to* | YES | YES |
| *Budget - Allowable encumbrance* | YES | YES |
| *Budget - Allowable expenditure* | YES | YES |
| *Budget - Available* | YES | YES |
| *Budget - Awaiting payment* | YES | YES |
| *Budget - Budget UUID* | YES | YES |
| *Budget - Cash balance* | YES | YES |
| *Budget - Created date* | YES | YES | 
| *Budget - Credits* | YES | YES |
| *Budget - Encumbered* | YES | YES |
| *Budget - Expended* | YES | YES |
| *Budget - Initial allocation* | YES | YES |
| *Budget - Name* | YES | YES |
| *Budget - Net transfers* | YES | YES |
| *Budget - Over encumbrance* | YES | YES |
| *Budget - Over expended* | YES | YES | 
| *Budget - Status* | YES | YES |
| *Budget - Tags* | YES | YES | 
| *Budget - Total funding* | YES | YES |
| *Budget - Unavailable* | YES | YES |
| *Budget - Updated date* | YES | YES | 
| *Budget - Version* | YES | YES | 
| *Fiscal year - Acquisition unit names* | YES | YES |
| *Fiscal year - Code* | YES | YES |
| *Fiscal year - Created date* | YES | YES |
| *Fiscal year - Currency* | YES | YES |
| *Fiscal year - Description* | YES | YES |
| *Fiscal year - Name* | YES | YES |
| *Fiscal year - Period begin date* | YES | YES | 
| *Fiscal year - Period end date* | YES | YES |
| *Fiscal year - Series* | YES | YES | 
| *Fiscal year - Updated date* | YES | YES | 
| *Fiscal year - UUID* | NO | YES | 
| *Fiscal year - Version* | YES | YES |
| *Fund - Fund - Acquisition unit names* | YES | YES |
| *Fund - Fund - Code* | YES | YES | 
| *Fund - Fund - Created date* | YES | YES |
| *Fund - Fund - Description* | YES | YES |
| *Fund - Fund - Donor organizations* | YES | YES |
| *Fund - Fund - External account number* | YES | YES |
| *Fund - Fund - Locations* | NO | YES |
| *Fund - Fund - Name* | YES | YES |
| *Fund - Fund - Restrict by locations* | YES | YES |
| *Fund - Fund - Status* | YES | YES |
| *Fund - Fund - Tags* | NO | YES |
| *Fund - Fund - Transfer from* | YES | YES |
| *Fund - Fund - Transfer to* | YES | YES |
| *Fund - Fund - Updated date* | YES | YES |
| *Fund - Fund - UUID* | YES | YES | 
| *Fund - Fund - Version* | YES | YES |
| *Fund - Fund type - Type* | YES | YES |
| *Fund - Ledger - Acquisition unit names* | YES | YES | 
| *Fund - Ledger - Code* | YES | YES |
| *Fund - Ledger - Created date* | YES | YES |
| *Fund - Ledger - Currency* | YES | YES |
| *Fund - Ledger - Description* | YES | YES |
| *Fund - Ledger - Fiscal year one* | YES | YES | 
| *Fund - Ledger - Name* | YES | YES |
| *Fund - Ledger - Restrict encumbrance* | YES | YES |
| *Fund - Ledger - Restrict expenditures* | YES | YES |
| *Fund - Ledger - Status* | YES | YES |
| *Fund - Ledger - Updated date* | YES | YES |
| *Fund - Ledger - UUID* | YES | YES |
| *Fund - Ledger - Version* | YES | YES |

### Fee/Fine accounts with users

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? |
| :----- | :-----: | :-----: | 
| *Fee/Fine accounts - Amount* | YES | YES |
| *Fee/Fine accounts - Barcode* | YES | YES |
| *Fee/Fine accounts - Created at* | YES | YES |
| *Fee/Fine accounts - Due date* | YES | YES |
| *Fee/Fine accounts - Fee/fine owner* | YES | YES |
| *Fee/Fine accounts - Fee/fine type* | YES | YES |
| *Fee/Fine accounts - Location* | YES | YES |
| *Fee/Fine accounts - Material type* | YES | YES |
| *Fee/Fine accounts - Payment status name* | YES | YES |
| *Fee/Fine accounts - Remaining* | YES | YES |
| *Fee/Fine accounts - Returned date* | YES | YES |
| *Fee/Fine accounts - Status name* | YES | YES |
| *Fee/Fine accounts - Updated at* | YES | YES |
| *Fee/Fine accounts - User UUID* | YES | YES |
| *Fee/Fine accounts - UUID* | YES | YES |
| *User - Active* | YES | YES |
| *User - Address* | NO | YES |
| *User - Address — Primary address* | YES | YES |
| *User - Address — City* | YES | YES |
| *User - User — Address — Region* | YES | YES |
| *User - User — Address — Postal code* | YES | YES |
| *User - User — Address — Line 1* | YES | YES |
| *User - User — Address — Line 2* | YES | YES |
| *User - User — Address — Country* | YES | YES |
| *User - User — Address — Type* | YES | YES |
| *User - Barcode* | YES | YES |
| *User - Created by user UUID* | YES | YES |
| *User - Date of birth* | YES | YES |
| *User - Department names* | YES | YES |
| *User - Department UUIDs* | YES | YES |
| *User - Email* | YES | YES |
| *User - Enrollment date* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - External system ID* | YES | YES |
| *User - First name* | YES | YES |
| *User - Last name* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Middle name* | YES | YES |
| *User - Mobile phone* | YES | YES |
| *User - originalTenantId* | YES | YES |
| *User - Phone* | YES | YES |
| *User - Preferred contact type* | YES | YES |
| *User - Preferred first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - Tags* | YES | YES |
| *User - Type* | YES | YES |
| *User - Updated by user UUID* | YES | YES |
| *User - User created date* | YES | YES |
| *User - User updated date* | YES | YES |
| *User - User UUID* | YES | YES |
| *User - Username* | YES | YES |
| *User - Patron group — Name* | YES | YES |

### Fund with ledger

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? |
| :----- | :-----: | :-----: | 
| *Fund - Acquisition unit names* | YES | YES |
| *Fund - Code* | YES | YES | 
| *Fund - Created date* | YES | YES |
| *Fund - Description* | YES | YES |
| *Fund - Donor organizations* | YES | YES |
| *Fund - External account number* | YES | YES |
| *Fund - Locations* | NO | YES |
| *Fund - Name* | YES | YES |
| *Fund - Restrict by locations* | YES | YES |
| *Fund - Status* | YES | YES |
| *Fund - Tags* | NO | YES |
| *Fund - Transfer from* | YES | YES |
| *Fund - Transfer to* | YES | YES |
| *Fund - Updated date* | YES | YES |
| *Fund - UUID* | YES | YES | 
| *Fund - Version* | YES | YES |
| *Fund type - Type* | YES | YES |
| *Ledger - Acquisition unit names* | YES | YES | 
| *Ledger - Code* | YES | YES |
| *Ledger - Created date* | YES | YES |
| *Ledger - Currency* | YES | YES |
| *Ledger - Description* | YES | YES |
| *Ledger - Fiscal year one* | YES | YES | 
| *Ledger - Name* | YES | YES |
| *Ledger - Restrict encumbrance* | YES | YES |
| *Ledger - Restrict expenditures* | YES| | YES |
| *Ledger - Status* | YES | YES |
| *Ledger - Updated date* | YES | YES |
| *Ledger - UUID* | YES | YES |
| *Ledger - Version* | YES | YES |

### Holdings

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? |
| :----- | :-----: | :-----: | 
| *Holdings - Acquisition method* | YES | YES |
| *Holdings - Acquisition order format* | YES | YES |
| *Holdings - Acquisition receipt status* | YES | YES |
| *Holdings - Administrative notes* | NO |YES |
| *Holdings - Call number* | YES | YES |
| *Holdings - Call number prefix* | YES | YES |
| *Holdings - Call number suffix* | YES | YES |
| *Holdings - Copy number* | YES | YES |
| *Holdings - Created date* | YES | YES |
| *Holdings - Digitization policy* | YES | YES |
| *Holdings - Electronic access* | NO |YES |
| *Holdings - Former IDs* | NO |YES |
| *Holdings - HRID* | NO |YES |
| *Holdings - Instance UUID* | YES | YES |
| *Holdings - Notes* | NO | YES |
| *Holdings - Number of items* | YES | YES |
| *Holdings - Record version* | YES | YES |
| *Holdings - Retention policy* | YES | YES |
| *Holdings - Shelving title* | YES | YES |
| *Holdings - Statements* | NO |YES |
| *Holdings - Statements for indexes* | NO |YES |
| *Holdings - Statements for supplements* | NO |YES |
| *Holdings - Statistical code names* | YES | YES |
| *Holdings - Statistical code UUIDs* | NO |YES |
| *Holdings - Suppress from discovery* | YES | YES |
| *Holdings - Tags* | NO |YES |
| *Holdings - Updated date* | YES | YES |
| *Holdings - UUID* | YES | YES |
| *Effective library - Code* | YES | YES |
| *Effective library - Name* | YES | YES |
| *Effective location - Code* | YES | YES |
| *Effective location - Name* | YES | YES |
| *Permanent location - Code* | YES | YES |
| *Permanent location - Name* | YES | YES |
| *Temporary location - Code* | YES | YES |
| *Temporary location - Name* | YES | YES |


### Instances

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Instance - Administrative notes* | NO | YES |
| *Instance - Alternative titles* | NO | YES |
| *Instance - Cataloged date* | YES | YES |
| *Instance - Classifications* | NO | YES |
| *Instance - Contributors* | NO | YES |
| *Instance - Created date* | YES | YES |
| *Instance - Date 1* | YES | YES |
| *Instance - Date 2* | YES | YES |
| *Instance - Editions* | NO | YES |
| *Instance - Electronic access* | NO | YES |
| *Instance - Flag for deletion* | NO | YES |
| *Instance - Format names* | YES | YES |
| *Instance - Identifiers* | NO | YES |
| *Instance - Index title* | YES | YES | 
| *Instance - Instance format UUIDs* | NO | YES |
| *Instance - Instance HRID* | YES | YES |
| *Instance - Instance UUID* | YES | YES |
| *Instance - Languages* | YES | YES |
| *Instance - Mode of issuance* | YES | YES |
| *Instance - Notes* | NO | YES |
| *Instance - Physical descriptions* | NO | YES |
| *Instance - Previously held* | YES | YES |
| *Instance - Primary contributor* | NO | YES |
| *Instance - Publication* | NO | YES |
| *Instance - Publication range* | NO | YES |
| *Instance - Series* | NO | YES |
| *Instance - Source* | YES | YES |
| *Instance - Statistical code names* | YES | YES |
| *Instance - Statistical code UUIDs* | NO | YES |
| *Instance - Subject headings* | NO | YES |
| *Instance - Suppress from discovery* | YES | YES |
| *Instance - Tags* | NO | YES |
| *Instance - Updated date* | YES | YES |
| *Instance date type - Name* | YES | YES |
| *Instance status - Code* | YES | YES |
| *Instance status - Term* | YES | YES |

### Instances with MARC bibliographic

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Instance — Administrative notes* | YES | YES |
| *Instance — Affiliation name* | YES | YES |
| *Instance — Alternative titles* | YES | YES |
| *Instance — Alternative titles — Alternative title* | YES | YES |
| *Instance — Alternative titles — Alternative title type* | YES | YES |
| *Instance — Cataloged date* | YES | YES |
| *Instance — Classifications* | YES | YES |
| *Instance — Classifications — Classification* | YES | YES |
| *Instance — Classifications — Classification identifier type* | YES | YES |
| *Instance — Contributors* | YES | YES |
| *Instance — Contributors — Primary* | YES | YES |
| *Instance — Contributors — Name* | YES | YES |
| *Instance — Contributors — Type, free text* | YES | YES |
| *Instance — Contributors — Name type* | YES | YES |
| *Instance — Contributors — Type* | YES | YES |
| *Instance — Created date* | YES | YES |
| *Instance — Date 1* | YES | YES |
| *Instance — Date 2* | YES | YES |
| *Instance — Editions* | YES | YES |
| *Instance — Electronic access* | YES | YES |
| *Instance — Electronic access — URI* | YES | YES |
| *Instance — Electronic access — Link text* | YES | YES |
| *Instance — Electronic access — Material specified* | YES | YES |
| *Instance — Electronic access — URL public note* | YES | YES |
| *Instance — Electronic access — URL relationship* | YES | YES |
| *Instance — Flag for deletion* | YES | YES |
| *Instance — Format names* | YES | YES |
| *Instance — Identifiers* | YES | YES |
| *Instance — Identifiers — Identifier* | YES | YES |
| *Instance — Identifiers — Identifier type* | YES | YES |
| *Instance — Index title* | YES | YES |
| *Instance — Instance format UUIDs* | YES | YES |
| *Instance — Instance HRID* | YES | YES |
| *Instance — Instance UUID* | YES | YES |
| *Instance — Languages* | YES | YES |
| *Instance — Mode of issuance* | YES | YES |
| *Instance — Nature of content* | YES | YES |
| *Instance — Notes* | YES | YES |
| *Instance — Notes — Staff only* | YES | YES |
| *Instance — Notes — Note* | YES | YES |
| *Instance — Notes — Note type* | YES | YES |
| *Instance — Physical descriptions* | YES | YES |
| *Instance — Previously held* | YES | YES |
| *Instance — Publication frequency* | YES | YES |
| *Instance — Publication range* | YES | YES |
| *Instance — Publications* | NO | YES |
| *Instance — Publications — Publisher* | YES | YES |
| *Instance — Publications — Publisher role* | YES | YES |
| *Instance — Publications — Place of publication* | YES | YES |
| *Instance — Publications — Publication date* | YES | YES |
| *Instance — Record version* | YES | YES |
| *Instance — Resource title* | YES | YES |
| *Instance — Resource type* | YES | YES |
| *Instance — Series* | YES | YES |
| *Instance — Shared* | YES | YES |
| *Instance — Source* | YES | YES |
| *Instance — Staff suppress* | YES | YES |
| *Instance — Statistical code UUIDs* | YES | YES |
| *Instance — Statistical codes* | YES | YES |
| *Instance — Subjects* | YES | YES |
| *Instance — Subjects — Subject headings* | YES | YES |
| *Instance — Subjects — Subject source* | YES | YES |
| *Instance — Subjects — Subject type* | YES | YES |
| *Instance — Suppress from discovery* | YES | YES |
| *Instance — Tags* | YES | YES |
| *Instance — Tenant ID* | YES | YES |
| *Instance — Updated date* | YES | YES |
| *MARC bibliographic — Created date* | YES | YES |
| *MARC bibliographic — External HRID* | YES | YES |
| *MARC bibliographic — External HRID* | YES | YES |
| *MARC bibliographic — Leader record status* | YES | YES |
| *MARC bibliographic — MARC jsonb* | YES | YES |
| *MARC bibliographic — Matched UUID* | YES | YES |
| *MARC bibliographic — Order* | YES | YES |
| *MARC bibliographic — State* | YES | YES |
| *MARC bibliographic — Updated date* | YES | YES |
| *MARC created by — Email* | YES | YES |
| *MARC created by — Last name, first name* | YES | YES |
| *MARC created by — Username* | YES | YES |
| *MARC updated by — Email* | YES | YES |
| *MARC updated by — Last name, first name* | YES | YES |
| *MARC updated by — Username* | YES | YES |

### Invoice lines

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Invoice lines - Account number* | YES | YES |
| *Invoice lines - Accounting code* | YES | YES |
| *Invoice lines - Comment* | YES | YES |
| *Invoice lines - Description* | YES | YES | 
| *Invoice lines - Invoice line number* | YES | YES |
| *Invoice lines - Invoice number* | YES | YES |
| *Invoice lines - PO line number* | YES | YES | 
| *Invoice lines - Quantity* | YES | YES |
| *Invoice lines - Reference numbers* | NO | YES |
| *Invoice lines - Release encumbrance* | YES | YES |
| *Invoice lines - Status* | YES | YES | 
| *Invoice lines - Sub-total* | YES | YES |
| *Invoice lines - Subscription end* | YES | YES | 
| *Invoice lines - Subscription info* | YES | YES |
| *Invoice lines - Subscription start* | YES | YES |
| *Invoice lines - Tags* | NO | YES |
| *Invoice lines - Total* | YES | YES |
| *Invoice lines - Total adjustments* | YES | YES |
| *Invoice lines - Updated date* | YES | YES | 
| *Invoice lines - UUID* | YES | YES | 
| *Invoice - Account number* | YES | YES | 
| *Invoice - Accounting code* | YES | YES | 
| *Invoice - Acquisition unit names* | YES | YES |
| *Invoice - Approved by name* | YES | YES | 
| *Invoice - Approved date* | YES | YES | 
| *Invoice - Batch group* | YES | YES | 
| *Invoice - Bill to* | NO | YES | 
| *Invoice - Check subscription overlap* | YES | YES | 
| *Invoice - Created date* | YES | YES | 
| *Invoice - Currency* | YES | YES | 
| *Invoice - Enclosure needed* | YES | YES | 
| *Invoice - Exchange rate* | YES | YES | 
| *Invoice - Export to accounting* | YES | YES | 
| *Invoice - Fiscal year* | YES | YES | 
| *Invoice - Folio invoice number* | YES | YES | 
| *Invoice - Invoice date* | YES | YES | 
| *Invoice - Note* | YES | YES | 
| *Invoice - Payment date* | YES | YES | 
| *Invoice - Payment due* | YES | YES | 
| *Invoice - Payment method* | YES | YES | 
| *Invoice - Source* | YES | YES | 
| *Invoice - Status* | YES | YES | 
| *Invoice - Sub-total* | YES | YES |
| *Invoice - Tags* | NO | YES | 
| *Invoice - Terms* | YES | YES |
| *Invoice - Total* | NO | YES |  
| *Invoice - Total adjustments* | YES | YES | 
| *Invoice - Total calculated amount* | YES | YES | 
| *Invoice - Updated date* | YES | YES | 
| *Invoice - UUID* | YES | YES | 
| *Invoice - Vendor invoice number* | YES | YES | 
| *Invoice - Vendor name* | YES | YES | 
| *Invoice - Voucher number* | YES | YES | 

### Invoices 

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Account number* | YES | YES | 
| *Accounting code* | YES | YES | 
| *Acquisition unit names* | YES | YES | 
| *Approved by name* | YES | YES | 
| *Approved date* | YES | YES | 
| *Batch group* | YES | YES | 
| *Bill to* | NO | YES | 
| *Cancellation note* | YES | YES | 
| *Check subscription overlap* | YES | YES |
| *Created date* | YES | YES | 
| *Currency* | YES | YES | 
| *Enclosure needed* | YES | YES | 
| *Exchange rate* | YES | YES | 
| *Export to accounting* | YES | YES | 
| *Fiscal year* | YES | YES | 
| *Folio invoice number* | YES | YES | 
| *Invoice date* | YES | YES | 
| *Lock total* | YES | YES | 
| *Note* | YES | YES | 
| *Payment date* | YES | YES | 
| *Payment due* | YES | YES | 
| *Payment method* | YES | YES| 
| *Source* | YES | YES | 
| *Status* | YES | YES | 
| *Sub-total* | YES | YES | 
| *Tags* | NO | YES | 
| *Terms* | YES | YES | 
| *Total adjustments* | YES | YES | 
| *Total calculated amount* | YES | YES | 
| *Total units* | YES | YES | 
| *Updated date* | YES | YES | 
| *UUID* | YES | YES | 
| *Vendor invoice number* | YES | YES | 
| *Vendor name* | YES | YES | 
| *Voucher number* | YES | YES | 


### Items

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Items - Accession number* | YES | YES |
| *Items - Administrative notes* | NO | YES |
| *Items - Barcode* | YES | YES |
| *Items - Chronology* | YES | YES |
| *Items - Copy number* | YES | YES |
| *Items - Created date* | YES | YES |
| *Items - Description of pieces* | YES | YES |
| *Items - Display summary* | YES | YES |
| *Items - Effective call number* | YES | YES |
| *Items - Effective shelving order* | YES | YES |
| *Items - Electronic access* | NO | YES |
| *Items - Enumeration* | YES | YES |
| *Items - Former IDs* | NO | YES |
| *Items - Item call number* | YES | YES |
| *Items - Item call number prefix* | YES | YES |
| *Items - Item call number suffix* | YES | YES |
| *Items - Item HRID* | YES | YES |
| *Items - Item UUID* | YES | YES |
| *Items - Last check in date time* | YES | YES |
| *Items - Notes* | NO |YES |
| *Items - Notes - Note* | YES |YES |
| *Items - Notes - Note type* | YES |YES |
| *Items - Notes - Staff only* | YES |YES |
| *Items - Number of missing pieces* | YES | YES |
| *Items - Number of pieces* | YES | YES |
| *Items - Purchase order line identifier* | YES | YES |
| *Items - Statistical code* | YES | YES |
| *Items - Suppress from discovery* | YES | YES |
| *Items - Tags* | NO | YES |
| *Items - Updated date* | YES | YES |
| *Items - Version* | YES | YES |
| *Items - Volume* | YES | YES |
| *Items - Year caption* | NO | YES |
| *Item call number - Type* | YES | YES |
| *Effective call number - Type* | YES | YES |
| *Material type - Name* | YES | YES |
| *Instances - Administrative notes* | NO | YES |
| *Instances - Alternative titles* | NO | YES |
| *Instances - Cataloged date* | YES | YES |
| *Instances - Classifications* | NO | YES |
| *Instances - Contributors* | NO | YES |
| *Instances - Created date* | YES | YES |
| *Instances - Date 1* | YES | YES |
| *Instances - Date 2* | YES | YES |
| *Instances - Editions* | NO | YES |
| *Instances - Electronic access* | NO | YES |
| *Instances - Flag for deletion* | NO | YES |
| *Instances - Format names* | YES | YES |
| *Instances - Identifiers* | NO | YES |
| *Instances - Index title* | YES | YES | 
| *Instances - Instance format UUIDs* | NO | YES |
| *Instances - Instance HRID* | YES | YES |
| *Instances - Instance UUID* | YES | YES |
| *Instances - Languages* | YES | YES |
| *Instances - Mode of issuance* | YES | YES |
| *Instances - Notes* | NO | YES |
| *Instances - Physical descriptions* | NO | YES |
| *Instances - Previously held* | YES | YES |
| *Instances - Primary contributor* | NO | YES |
| *Instances - Publication* | NO | YES |
| *Instances - Publication range* | NO | YES |
| *Instances - Series* | NO | YES |
| *Instances - Source* | YES | YES |
| *Instances - Staff suppress* | YES | YES | 
| *Instances - Statistical code names* | YES | YES |
| *Instances - Statistical code UUIDs* | NO | YES |
| *Instances - Subject headings* | NO | YES |
| *Instances - Suppress from discovery* | YES | YES |
| *Instances - Tags* | NO | YES |
| *Instances - Updated date* | YES | YES |
| *Holdings - Acquisition method* | YES | YES |
| *Holdings - Acquisition order format* | YES | YES |
| *Holdings - Acquisition receipt status* | YES | YES |
| *Holdings - Administrative notes* | NO |YES |
| *Holdings - Call number* | YES | YES |
| *Holdings - Call number prefix* | YES | YES |
| *Holdings - Call number suffix* | YES | YES |
| *Holdings - Copy number* | YES | YES |
| *Holdings - Created date* | YES | YES |
| *Holdings - Digitization policy* | YES | YES |
| *Holdings - Electronic access* | NO |YES |
| *Holdings - Former IDs* | NO |YES |
| *Holdings - HRID* | NO |YES |
| *Holdings - Instance UUID* | YES | YES |
| *Holdings - Notes* | NO | YES |
| *Holdings - Number of items* | YES | YES |
| *Holdings - Record version* | YES | YES |
| *Holdings - Retention policy* | YES | YES |
| *Holdings - Shelving title* | YES | YES |
| *Holdings - Statements* | NO |YES |
| *Holdings - Statements for indexes* | NO |YES |
| *Holdings - Statements for supplements* | NO |YES |
| *Holdings - Statistical code names* | YES | YES |
| *Holdings - Statistical code UUIDs* | NO |YES |
| *Holdings - Tags* | NO |YES |
| *Holdings - Updated date* | YES | YES |
| *Holdings - UUID* | YES | YES |
| *Effective library - Code* | YES | YES |
| *Effective library - Name* | YES | YES |
| *Effective location - Code* | YES | YES |
| *Effective location - Name* | YES | YES |
| *Permanent location - Code* | YES | YES |
| *Permanent location - Name* | YES | YES |
| *Temporary location - Code* | YES | YES |
| *Temporary location - Name* | YES | YES |
| *Permanent loan type - Name* | YES | YES |
| *Permanent loan type - UUID* | YES | YES |
| *Temporary loan type - Name* | YES | YES |
| *Temporary loan type - UUID* | YES | YES |


### Loans

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Loan - Action* | YES | YES |
| *Loan - Checkout date* |YES | YES |
| *Loan - Claimed returned date* |YES | YES |
| *Loan - Created at* | YES | YES |
| *Loan - Declared lost date* | YES | YES |
| *Loan - Due date* | YES | YES |
| *Loan - Due date changed by recall* | YES | YES |
| *Loan - Renewal count* | YES | YES |
| *Loan - Return date* | YES | YES |
| *Loan - Status name* | YES | YES |
| *Loan - UUID* | YES | YES |
| *Loan policy - Name* | YES | YES |
| *Loan policy - UUID* | NO | YES |
| *User - Active* | YES | YES |
| *User - Barcode* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - UUID* | YES | YES |
| *Patron group - Name* | YES | YES |
| *Material type - Name* | YES | YES |
| *Item - Accession number* | YES | YES |
| *Item - Administrative notes* | NO | YES |
| *Item - Barcode* | YES | YES |
| *Item - Chronology* | YES | YES |
| *Item - Copy number* | YES | YES |
| *Item - Created date* | YES | YES |
| *Item - Description of pieces* | YES | YES |
| *Item - Effective call number* | YES | YES |
| *Item - Effective shelving order* | YES | YES |
| *Item - Electronic access* | NO | YES |
| *Item - Enumeration* | YES | YES |
| *Item - Item call number* | YES | YES |
| *Item - Item call number prefix* | YES | YES |
| *Item - Item call number suffix* | YES | YES |
| *Item - Item HRID* | YES | YES |
| *Item - Item UUID* | YES | YES |
| *Item - Last check in date time* | YES | YES |
| *Item - Notes* | NO | YES |
| *Item - Number of missing pieces* | YES | YES |
| *Item - Number of pieces* | YES | YES |
| *Item - Purchase order line identifier* | YES | YES |
| *Item - Statistical code* | YES | YES |
| *Item - Status* | YES | YES |
| *Item - Suppress from discovery* | YES | YES |
| *Item - Tags* | NO | YES |
| *Item - Updated date* | YES | YES |
| *Item - Version* | YES | YES |
| *Item - Volume* | YES | YES |
| *Item - Year caption* | NO | YES |
| *Item permanent loan type - Name* | YES | YES |
| *Item permanent loan type - UUID* | YES | YES |
| *Item temporary loan type - Name* | YES | YES |
| *Item temporary loan type - UUID* | YES | YES |
| *Instances - Administrative notes* | NO | YES |
| *Instances - Alternative titles* | NO | YES |
| *Instances - Cataloged date* | YES | YES |
| *Instances - Classifications* | NO | YES |
| *Instances - Contributors* | NO | YES |
| *Instances - Created date* | YES | YES |
| *Instances - Date 1* | YES | YES |
| *Instances - Date 2* | YES | YES |
| *Instances - Editions* | NO | YES |
| *Instances - Electronic access* | NO | YES |
| *Instances - Flag for deletion* | NO | YES |
| *Instances - Format names* | YES | YES |
| *Instances - Identifiers* | NO | YES |
| *Instances - Index title* | YES | YES |
| *Instances - Instance format UUIDs* | NO | YES |
| *Instances - Instance HRID* | YES | YES |
| *Instances - Instance UUID* | YES | YES |
| *Instances - Languages* | YES | YES |
| *Instances - Mode of issuance* | YES | YES |
| *Instances - Notes* | NO | YES |
| *Instances - Physical descriptions* | NO | YES |
| *Instances - Previously held* | YES | YES |
| *Instances - Primary contributor* | NO | YES |
| *Instances - Publication* | NO | YES |
| *Instances - Publication range* | NO | YES |
| *Instances - Record version* | YES | YES | 
| *Instances - Resource title* | YES | YES |
| *Instances - Resource type* | YES | YES |
| *Instances - Resource type UUID* | YES | YES |
| *Instances - Series* | NO | YES |
| *Instances - Source* | YES | YES |
| *Instances - Staff suppress* | YES | YES |
| *Instances - Statistical code names* | YES | YES |
| *Instances - Statistical code UUIDs* | NO | YES |
| *Instances - Subject headings* | NO | YES |
| *Instances - Suppress from discovery* | YES | YES |
| *Instances - Tags* | NO | YES |
| *Instances - Updated date* | YES | YES |
| *Holdings - Acquisition method* | YES | YES |
| *Holdings - Acquisition order format* | YES | YES |
| *Holdings - Acquisition receipt status* | YES | YES |
| *Holdings - Administrative notes* | NO |YES |
| *Holdings - Call number* | YES | YES |
| *Holdings - Call number prefix* | YES | YES |
| *Holdings - Call number suffix* | YES | YES |
| *Holdings - Copy number* | YES | YES |
| *Holdings - Created date* | YES | YES |
| *Holdings - Digitization policy* | YES | YES |
| *Holdings - Electronic access* | NO |YES |
| *Holdings - Former IDs* | NO |YES |
| *Holdings - HRID* | NO |YES |
| *Holdings - Instance UUID* | YES | YES |
| *Holdings - Number of items* | YES | YES |
| *Holdings - Record version* | YES | YES |
| *Holdings - Retention policy* | YES | YES |
| *Holdings - Shelving title* | YES | YES |
| *Holdings - Statements* | NO |YES |
| *Holdings - Statements for indexes* | NO |YES |
| *Holdings - Statements for supplements* | NO |YES |
| *Holdings - Statistical code names* | YES | YES |
| *Holdings - Statistical code UUIDs* | NO |YES |
| *Holdings - Suppress from discovery* | YES | YES |
| *Holdings - Tags* | NO |YES |
| *Holdings - Updated date* | YES | YES |
| *Holdings - UUID* | YES | YES |
| *Check in service point - Code* | YES | YES |
| *Check in service point - Discovery display name* | YES | YES |
| *Check in service point - Name* | YES | YES |
| *Check out service point - Code* | YES | YES |
| *Check out service point - Discovery display name* | YES | YES |
| *Check out service point - Name* | YES | YES |
| *Item effective library at checkout - Code* | YES | YES | 
| *Item effective library at checkout - Name* | YES | YES |
| *Item effective location at checkout - Code* | YES | YES |
| *Item effective location at checkout - Name* | YES | YES |

**Custom fields** for User records, if configured, are available for building a Loans query in the Lists app. To create custom fields in User records, see [Settings \> Users \> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields). 

### Lost items requiring actual cost

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Actual cost — Additional info for patron* | YES | YES |
| *Actual cost — Additional info for staff* | YES | YES |
| *Actual cost — Created at* | YES | YES |
| *Actual cost — Expiration date* | YES | YES |
| *Actual cost — Fee fine account UUID* | YES | YES |
| *Actual cost — Fee fine billed amount* | YES | YES |
| *Actual cost — Fee fine owner* | YES | YES |
| *Actual cost — Fee fine type* | YES | YES |
| *Actual cost — Instance contributors* | YES | YES |
| *Actual cost — Instance contributors name* | YES | YES |
| *Actual cost — Instance identifiers* | YES | YES |
| *Actual cost — Instance identifiers type UUID* | YES | YES |
| *Actual cost — Instance identifiers value* | YES | YES |
| *Actual cost — Instance identifiers type name* | YES | YES |
| *Actual cost — Instance title* | YES | YES |
| *Actual cost — Instance UUID* | YES | YES |
| *Actual cost — Item barcode* | YES | YES |
| *Actual cost — Item effective location* | YES | YES |
| *Actual cost — Item loan type* | YES | YES |
| *Actual cost — Item material type* | YES | YES |
| *Actual cost — Item permanent location* | YES | YES |
| Actual cost — Item UUID** | YES | YES |
| *Actual cost — Loan UUID* | YES | YES |
| *Actual cost — Loss date* | YES | YES |
| *Actual cost — Loss type* | YES | YES |
| *Actual cost — Status* | YES | YES |
| *Actual cost — Updated at* | YES | YES |
| *Actual cost — User barcode* | YES | YES |
| *Actual cost — User first name* | YES | YES |
| *Actual cost — User last name* | YES | YES |
| *Actual cost — User middle name* | YES | YES |
| *Actual cost — User patron group* | YES | YES |
| *Actual cost — User UUID* | YES | YES |
| *Actual cost — UUID* | YES | YES |
| *User — Active* | YES | YES |
| *User — Barcode* | YES | YES |
| *User — Department names* | YES | YES |
| *User — Department UUIDs* | YES | YES |
| *User — Email* | YES | YES |
| *User — Expiration date* | YES | YES |
| *User — Last name, first name* | YES | YES |
| *User — originalTenantId* | YES | YES |
| *User — Pronouns* | YES | YES |
| *User — Tags* | YES | YES |
| *User — Type* | YES | YES |
| *User — User UUID* | YES | YES |
| *Actual cost — Created by — Email* | YES | YES |
| *Actual cost — Created by — Last name, first name* | YES | YES |
| *Actual cost — Created by — Username* | YES | YES |
| *Actual cost — Updated by — Email* | YES | YES |
| *Actual cost — Updated by — Last name, first name* | YES | YES |
| *Actual cost — Updated by — Username* | YES | YES |

### Order invoice analysis

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *PO — Related fiscal years* | YES | YES |
| *PO — Acquisition unit names* | YES | YES |
| *PO — Acquisition unit UUIDs* | YES | YES |
| *PO — Approved* | YES | YES |
| *PO — Close reason* | YES | YES |
| *PO — Created at* | YES | YES |
| *PO — Date ordered* | YES | YES |
| *PO — External order number* | YES | YES |
| *PO — Order type* | YES | YES |
| *PO — PO number* | YES | YES |
| *PO — Re-encumber* | YES | YES |
| *PO — Tags* | YES | YES |
| *PO — Updated at* | YES | YES |
| *PO — UUID* | YES | YES |
| *PO — Workflow status* | YES | YES |
| *PO line — Acquisition method* | YES | YES |
| *PO line — Agreement UUID* | YES | YES |
| *PO line — Cost currency* | YES | YES |
| *PO line — Cost exchange rate* | YES | YES |
| *PO line — Cost PO line estimated price* | YES | YES |
| *PO line — Created at* | YES | YES |
| *PO line — Description* | YES | YES |
| *PO line — Details receiving note* | YES | YES |
| *PO line — Donor* | YES | YES |
| *PO line — E-resource create inventory* | YES | YES |
| *PO line — E-resource expected activation* | YES | YES |
| *PO line — E-resource is activated* | YES | YES |
| *PO line — E-resource is trial* | YES | YES |
| *PO line — E-resource resource url* | YES | YES |
| *PO line — Fund distribution* | YES | YES |
| *PO line — Fund distribution — Encumbrance UUID* | YES | YES |
| *PO line — Fund distribution — Value* | YES | YES |
| *PO line — Fund distribution — Fund* | YES | YES |
| *PO line — Fund distribution — Expense class* | YES | YES |
| *PO line — Fund distribution — Distribution type* | YES | YES |
| *PO line — Fund distribution — Code* | YES | YES |
| *PO line — Is rush* | YES | YES |
| *PO line — Locations* | YES | YES |
| *PO line — Locations — Quantity electronic* | YES | YES |
| *PO line — Locations — Quantity physical* | YES | YES |
| *PO line — Locations — Name* | YES | YES |
| *PO line — Locations — Code* | YES | YES |
| *PO line — Locations — Affiliation* | YES | YES |
| *PO line — Membership* | YES | YES |
| *PO line — Order format* | YES | YES |
| *PO line — Payment status* | YES | YES |
| *PO line — Physical expected receipt date* | YES | YES |
| *PO line — PO line number* | YES | YES |
| *PO line — Publication date* | YES | YES |
| *PO line — Publisher* | YES | YES |
| *PO line — Receipt date* | YES | YES |
| *PO line — Receipt status* | YES | YES |
| *PO line — Selector* | YES | YES |
| *PO line — Source* | YES | YES |
| *PO line — Tags* | YES | YES |
| *PO line — Title or package* | YES | YES |
| *PO line — Updated at* | YES | YES |
| *PO line — UUID* | YES | YES |
| *Instance — Administrative notes* | YES | YES |
| *Instance — Affiliation name* | YES | YES |
| *Instance — Alternative titles* | YES | YES |
| *Instance — Alternative titles — Alternative title* | YES | YES |
| *Instance — Alternative titles — Alternative title type* | YES | YES |
| *Instance — Cataloged date* | YES | YES |
| *Instance — Classifications* | YES | YES |
| *Instance — Classifications — Classification* | YES | YES |
| *Instance — Classifications — Classification identifier type* | YES | YES |
| *Instance — Contributors* | YES | YES |
| *Instance — Contributors — Primary* | YES | YES |
| *Instance — Contributors — Name* | YES | YES |
| *Instance — Contributors — Type, free text* | YES | YES |
| *Instance — Contributors — Name type* | YES | YES |
| *Instance — Contributors — Type* | YES | YES |
| *Instance — Created date* | YES | YES |
| *Instance — Date 1* | YES | YES |
| *Instance — Date 2* | YES | YES |
| *Instance — Editions* | YES | YES |
| *Instance — Electronic access* | YES | YES |
| *Instance — Electronic access — URI* | YES | YES |
| *Instance — Electronic access — Link text* | YES | YES |
| *Instance — Electronic access — Material specified* | YES | YES |
| *Instance — Electronic access — URL public note* | YES | YES |
| *Instance — Electronic access — URL relationship* | YES | YES |
| *Instance — Flag for deletion* | YES | YES |
| *Instance — Format names* | YES | YES |
| *Instance — Identifiers* | NO | YES |
| *Instance — Identifiers — Identifier* | YES | YES |
| *Instance — Identifiers — Identifier type* | YES | YES |
| *Instance — Index title* | YES | YES |
| *Instance — Instance format UUIDs* | NO | YES |
| *Instance — Instance HRID* | YES | YES |
| *Instance — Instance source URI* | YES | YES |
| *Instance — Instance UUID* | YES | YES |
| *Instance — Languages* | YES | YES |
| *Instance — Mode of issuance* | YES | YES |
| *Instance — Nature of content* | YES | YES |
| *Instance — Notes* | YES | YES |
| *Instance — Notes — Staff only* | YES | YES |
| *Instance — Notes — Note* | YES | YES |
| *Instance — Notes — Note type* | YES | YES |
| *Instance — Physical descriptions* | YES | YES |
| *Instance — Previously held* | YES | YES |
| *Instance — Publication frequency* | YES | YES |
| *Instance — Publication range* | YES | YES |
| *Instance — Publications* | YES | YES |
| *Instance — Publications — Publisher* | YES | YES |
| *Instance — Publications — Publisher role* | YES | YES |
| *Instance — Publications — Place of publication* | YES | YES |
| *Instance — Publications — Publication date* | YES | YES |
| *Instance — Record version* | YES | YES |
| *Instance — Resource title* | YES | YES |
| *Instance — Resource type* | YES | YES |
| *Instance — Series* | YES | YES |
| *Instance — Shared* | YES | YES |
| *Instance — Source* | YES | YES |
| *Instance — Staff suppress* | YES | YES |
| *Instance — Statistical code UUIDs* | YES | YES |
| *Instance — Statistical codes* | YES | YES |
| *Instance — Subjects* | YES | YES |
| *Instance — Subjects — Subject headings* | YES | YES |
| *Instance — Subjects — Subject source* | YES | YES |
| *Instance — Subjects — Subject type* | YES | YES |
| *Instance — Suppress from discovery* | YES | YES |
| *Instance — Tags* | YES | YES |
| *Instance — Tenant ID* | YES | YES |
| *Instance — Updated date* | YES | YES |
| *Invoice — Line — Fund distribution amount* | YES | YES |
| *Invoice — Line — Fund distribution value* | YES | YES |
| *Invoice — Line — Account number* | YES | YES |
| *Invoice — Line — Accounting code* | YES | YES |
| *Invoice — Line — Comment* | YES | YES |
| *Invoice — Line — Description* | YES | YES |
| *Invoice — Line — Invoice line number* | YES | YES |
| *Invoice — Line — Invoice number* | YES | YES |
| *Invoice — Line — Po line number* | YES | YES |
| *Invoice — Line — Quantity* | YES | YES |
| *Invoice — Line — Reference numbers* | YES | YES |
| *Invoice — Line — Vendor reference number* | YES | YES |
| *Invoice — Line — Vendor reference type* | YES | YES |
| *Invoice — Line — Release encumbrance* | YES | YES |
| *Invoice — Line — Status* | YES | YES |
| *Invoice — Line — Sub-total* | YES | YES |
| *Invoice — Line — Subscription end* | YES | YES |
| *Invoice — Line — Subscription info* | YES | YES |
| *Invoice — Line — Subscription start* | YES | YES |
| *Invoice — Line — Tags* | YES | YES |
| *Invoice — Line — Total* | YES | YES |
| *Invoice — Line — Total adjustments* | YES | YES |
| *Invoice — Line — Updated date* | YES | YES |
| *Invoice — Line — UUID* | YES | YES |
| *Invoice — Account number* | YES | YES |
| *Invoice — Accounting code* | YES | YES |
| *Invoice — Acquisition unit names* | YES | YES |
| *Invoice — Approved by name* | YES | YES |
| *Invoice — Approved date* | YES | YES |
| *Invoice — Batch group* | YES | YES |
| *Invoice — Check subscription overlap* | YES | YES |
| *Invoice — Created date* | YES | YES |
| *Invoice — Currency* | YES | YES |
| *Invoice — Enclosure needed* | YES | YES |
| *Invoice — Exchange rate* | YES | YES |
| *Invoice — Export to accounting* | YES | YES |
| *Invoice — Fiscal year* | YES | YES |
| *Invoice — Folio invoice number* | YES | YES |
| *	Invoice — Invoice date* | YES | YES |
| *Invoice — Note* | YES | YES |
| *Invoice — Payment date* | YES | YES |
| *Invoice — Payment due* | YES | YES |
| *Invoice — Payment method* | YES | YES |
| *Invoice — Source* | YES | YES |
| *Invoice — Status* | YES | YES |
| *Invoice — Sub-total* | YES | YES |
| *Invoice — Tags* | YES | YES |
| *Invoice — Terms* | YES | YES |
| *Invoice — Total adjustments* | YES | YES |
| *Invoice — Total calculated amount* | YES | YES |
| *Invoice — Updated date* | YES | YES |
| *Invoice — UUID* | YES | YES |
| *Invoice — Vendor invoice number* | YES | YES |
| *Invoice — Vendor name* | YES | YES |
| *Invoice — Voucher number* | YES | YES |
| *Bill to — Address* | YES | YES |
| *Bill to — Name* | YES | YES |
| *Organization — Code* | YES | YES |
| *Organization — EDI vendor code* | YES | YES |
| *Organization — EDI vendor type* | YES | YES |
| *Organization — Is donor* | YES | YES |
| *Organization — Is vendor* | YES | YES |
| *Organization — Name* | YES | YES |
| *Organization — Status* | YES | YES |
| *Organization — Tags* | YES | YES |
| *Organization — UUID* | YES | YES |
| *Fiscal year — Acquisition unit names* | YES | YES |
| *Fiscal year — Code* | YES | YES |
| *Fiscal year — Created date* | YES | YES |
| *Fiscal year — Currency* | YES | YES |
| *Fiscal year — Description* | YES | YES |
| *Fiscal year — Name* | YES | YES |
| *Fiscal year — Period begin date* | YES | YES |
| *Fiscal year — Period end date* | YES | YES |
| *Fiscal year — Series* | YES | YES |
| *Fiscal year — Updated date* | YES | YES |
| *Fiscal year — UUID* | YES | YES |
| *Fiscal year — Version* | YES | YES |
| *Fund — Acquisition unit names* | YES | YES |
| *Fund — Code* | YES | YES |
| *Fund — Created date* | YES | YES |
| *Fund — Description* | YES | YES |
| *Fund — Donor organizations* | YES | YES |
| *Fund — External account number* | YES | YES |
| *Fund — Locations* | YES | YES |
| *Fund — Location UUID* | YES | YES |
| *Fund — Tenant ID* | YES | YES |
| *Fund — Location name* | YES | YES |
| *Fund — Name* | YES | YES |
| *Fund — Restrict by locations* | YES | YES |
| *Fund — Status* | YES | YES |
| *Fund — Tags* | YES | YES |
| *Fund — Transfer from* | YES | YES |
| *Fund — Transfer to* | YES | YES |
| *Fund — Updated date* | YES | YES |
| *Fund — UUID* | YES | YES |
| *Fund — Version* | YES | YES |
| *Fund type — Type* | YES | YES |
| *Expense class — Code* | YES | YES |
| *Expense class — Created date* | YES | YES |
| *Expense class — External account number extension* | YES | YES |
| *Expense class — Name* | YES | YES |
| *Expense class — Updated date* | YES | YES |
| *Expense class — UUID* | YES | YES |
| *Expense class — Version* | YES | YES |
| *PO created by — Email* | YES | YES |
| *PO created by — Last name, first name* | YES | YES |
| *PO created by — Username* | YES | YES |
| *PO updated by — Email* | YES | YES |
| *PO updated by — Last name, first name* | YES | YES |
| *PO updated by — Username* | YES | YES |
| *POL created by — Email* | YES | YES |
| *POL created by — Last name, first name* | YES | YES |
| *POL created by — Username* | YES | YES |
| *POL updated by — Email* | YES | YES |
| *POL updated by — Last name, first name* | YES | YES |
| *POL updated by — Username* | YES | YES |

### Organizations

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Access provider* | YES | YES |
| *Accounting code* | YES | YES |
| *Accounts* | NO | YES |
| *Acquisition unit names* | YES | YES |
| *Addresses* | NO | YES |
| *Agreements* | NO | YES |
| *Aliases* | NO | YES |
| *Changelogs* | NO | YES |
| *Claiming interval* | YES | YES |
| *Code* | YES | YES |
| *Created at* | YES | YES |
| *Description* | YES | YES |
| *Discount percent* | YES | YES |
| *EDI job scheduled enabled* | YES | YES |
| *EDI notes* | YES | YES |
| *EDI organization code* | YES | YES |
| *EDI organization type* | YES | YES |
| *EDI vendor code* | YES | YES |
| *EDI vendor type* | YES | YES |
| *Emails* | NO | YES |
| *Expected activation interval* | YES | YES |
| *Expected invoice interval* | YES | YES |
| *Expected receipt interval* | YES | YES |
| *Export to accounting* | YES | YES |
| *Governmental* | YES | YES |
| *Is donor* | YES | YES |
| *Is vendor* | YES | YES |
| *Language* | YES | YES |
| *Liable for VAT* | YES | YES |
| *Licensor* | YES | YES |
| *Material supplier* | YES | YES |
| *Name* | YES | YES |
| *Payment method* | YES | YES |
| *Phone numbers* | NO | YES |
| *Renewal activation interval* | YES | YES |
| *SAN code* | YES | YES |
| *Status* | YES | YES |
| *Subscription interval* | YES | YES |
| *Tax ID* | YES | YES |
| *Tax percentage* | YES | YES |
| *Type names* | YES | YES |
| *Type UUIDs* | NO | YES |
| *Updated at* | YES | YES |
| *URLs* | NO | YES |
| *UUID* | NO | YES |
| *Vendor currencies* | NO | YES |


### Purchase order lines

| Field name in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *POL - Agreement UUID* | YES | YES |
| *POL - Cost currency* | YES | YES |
| *POL - Cost exchange rate* | YES | YES |
| *POL - Cost PO line estimated price* | YES | YES |
| *POL - Created at* | YES | YES |
| *POL - Description* | YES | YES |
| *POL - Details receiving note* | YES | YES |
| *POL - Donor* | YES | YES |
| *POL - E-resource create inventory* | YES | YES |
| *POL - E-resource expected activation* | YES | YES |
| *POL - E-resource is activated* | YES | YES |
| *POL - E-resource is trial* | YES | YES |
| *POL - E-resource resource URL* | YES | YES |
| *POL - Is rush* | YES | YES |
| *POL - Membership* | YES | YES |
| *POL - Order format* | YES | YES |
| *POL - Payment status* | YES | YES |
| *POL - Physical expected receipt date* | YES | YES |
| *POL - PO line number* | YES | YES |
| *POL - Publication date* | YES | YES |
| *POL - Publisher* | YES | YES |
| *POL - Receipt date* | YES | YES |
| *POL - Receipt status* | YES | YES |
| *POL - Selector* | YES | YES |
| *POL - Source* | YES | YES |
| *POL - Tags* | NO | YES |
| *POL - Title or package* | YES | YES |
| *POL - Updated at* | YES | YES |
| *POL - UUID* | YES | YES |
| *POL created by user - Email* | YES | YES |
| *POL created by user - Last name, first name* | YES | YES |
| *POL created by user - Username* | YES | YES |
| *POL exchange rate* | YES | YES |
| *POL updated by user - Email* | YES | YES |
| *POL updated by user - Last name, first name* | YES | YES |
| *POL updated by user - Username* | YES | YES |
| *Exchange rate - Currency* | YES | YES |
| *Exchange rate - Rate* | YES | YES |
| *PO - Acquisition unit names* | YES | YES |
| *PO - Acquisition unit UUIDs* | NO | YES |
| *PO - Approved* | YES | YES |
| *PO - Created at* | YES | YES |
| *PO - External order number* | YES | YES |
| *PO - Order type* | YES | YES |
| *PO - PO number* | YES | YES |
| *PO - Re-encumber* | YES | YES |
| *PO - Tags tag list* | NO | YES |
| *PO - Updated at* | YES | YES |
| *PO - UUID* | YES | YES |
| *PO - Workflow status* | YES | YES |
| *PO assigned to user - Email* | YES | YES |
| *PO assigned to user - Last name, first name* | YES | YES |
| *PO assigned to user - Username* | YES | YES |
| *PO created by user - Email* | YES | YES |
| *PO created by user - Last name, first name* | YES | YES |
| *PO created by user - Username* | YES | YES |
| *PO updated by user - Email* | YES | YES |
| *PO updated by user - Last name, first name* | YES | YES |
| *PO updated by user - Username* | YES | YES |
| *Vendor org - Code* | YES | YES |
| *Vendor org - EDI vendor code* | YES | YES |
| *Vendor org - EDI vendor type* | YES | YES |
| *Vendor org - Is donor* | YES | YES |
| *Vendor org - Is vendor* | YES | YES |
| *Vendor org - Name* | YES | YES |
| *Vendor org - Status* | YES | YES |
| *Vendor org - UUID* | NO | YES 


### Purchase order lines with titles

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *POL - Agreement UUID* | YES | YES |
| *POL - Cost currency* | YES | YES |
| *POL - Cost exchange rate* | YES | YES |
| *POL - Cost PO line estimated price* | YES | YES |
| *POL - Created at* | YES | YES |
| *POL - Description* | YES | YES |
| *POL - Details receiving note* | YES | YES |
| *POL - Donor* | YES | YES |
| *POL - E-resource create inventory* | YES | YES |
| *POL - E-resource expected activation* | YES | YES |
| *POL - E-resource is activated* | YES | YES |
| *POL - E-resource is trial* | YES | YES |
| *POL - E-resource resource url* | YES | YES |
| *POL - Fund distribution* | NO | YES |
| *POL - Is rush* | YES | YES |
| *POL - Membership* | YES | YES |
| *POL - Order format* | YES | YES |
| *POL - Payment status* | YES | YES |
| *POL - Physical expected receipt date* | YES | YES |
| *POL - PO line number* | YES | YES |
| *POL - Publication date* | YES | YES |
| *POL - Publisher* | YES | YES |
| *POL - Receipt date* | YES | YES |
| *POL - Receipt status* | YES | YES |
| *POL - Selector* | YES | YES |
| *POL - Source* | YES | YES |
| *POL - Tags* | NO | YES |
| *POL - Title or package* | YES | YES |
| *POL - Updated at* | YES | YES |
| *POL - UUID* | YES | YES |
| *Instance - Administrative notes* | NO | YES |
| *Instance - Alternative titles* | NO | YES |
| *Instance - Cataloged date* | YES | YES |
| *Instance - Classifications* | NO | YES |
| *Instance - Contributors* | NO | YES |
| *Instance - Created date* | YES | YES |
| *Instance - Date 1* | YES | YES |
| *Instance - Date 2* | YES | YES |
| *Instance - Editions* | NO | YES |
| *Instance - Electronic access* | NO | YES |
| *Instance - Flag for deletion* | NO | YES |
| *Instance - Format names* | YES | YES |
| *Instance - Identifiers* | NO | YES |
| *Instance - Index title* | YES | YES |
| *Instance - Instance format UUIDs* | NO | YES |
| *Instance - Instance HRID* | YES | YES |
| *Instance - Instance UUID* | YES | YES |
| *Instance - Languages* | YES | YES |
| *Instance - Mode of issuance* | YES | YES |
| *Instance - Notes* | NO | YES |
| *Instance - Physical descriptions* | NO | YES |
| *Instance - Previously held* | YES | YES |
| *Instance - Primary contributor* | NO | YES |
| *Instance - Publication* | NO | YES |
| *Instance - Publication range* | NO | YES |
| *Instance - Record version* | YES | YES | 
| *Instance - Resource title* | YES | YES |
| *Instance - Resource type* | YES | YES |
| *Instance - Series* | NO | YES |
| *Instance - Source* | YES | YES |
| *Instance - Staff suppress* | YES | YES |
| *Instance - Statistical code names* | YES | YES |
| *Instance - Statistical code UUIDs* | NO | YES |
| *Instance - Subject headings* | NO | YES |
| *Instance - Suppress from discovery* | YES | YES |
| *Instance - Tags* | NO | YES |
| *Instance - Updated date* | YES | YES |
| *PO - Acquisition unit names* |  YES | YES |
| *PO - Acquisition unit UUIDs* | NO | YES |
| *PO - Approved* | YES | YES |
| *PO - Created at* | YES | YES |
| *PO - External order number* | YES | YES |
| *PO - Order type* | YES | YES |
| *PO - PO number* | YES | YES |
| *PO - Re-encumber* | YES | YES |
| *PO - Tags tag list* | NO | YES |
| *PO - Updated at* | YES | YES |
| *PO - UUID* | YES | YES |
| *PO - Workflow status* | YES | YES |
| *Created by user - Email* | YES | YES |
| *Created by user - Last name, first name* | YES | YES |
| *Created by user - Username* | YES | YES |
| *Organization - Code* | YES | YES |
| *Organization - EDI vendor code* | YES | YES |
| *Organization - EDI vendor type* | YES | YES |
| *Organization - Is donor* | YES | YES |
| *Organization - Is vendor* | YES | YES |
| *Organization - Name* | YES | YES |
| *Organization - Status* | YES | YES |
| *Organization - UUID* | YES | YES |

### Purchase orders

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Acquisition unit names* | YES | YES | 
| *Acquisition unit UUIDs* | NO | YES | 
| *Approval date* | YES | YES | 
| *Approved* | YES | YES | 
| *Bill to* | YES | YES | 
| *Close reason* | YES | YES | 
| *Close note* | YES | YES | 
| *Created at* | YES | YES | 
| *Date ordered* | YES | YES |
| *External order number* | YES | YES | 
| *Next PO line number* | YES | YES | 
| *Order type* | YES | YES | 
| *PO number* | YES | YES | 
| *PO number prefix* | YES | YES | 
| *PO number suffix* | YES | YES | 
| *Re-encumber* | YES | YES | 
| *Ship to* | YES | YES | 
| *Tags tag list* | NO | YES | 
| *Template* | YES | YES | 
| *Updated at* | YES | YES | 
| *UUID* | YES | YES | 
| *Workflow status* | YES | YES | 

### Receiving pieces
| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Pieces — Accession number* | YES | YES |
| *Pieces — Barcode* | YES | YES |
| *Pieces — Bind item tenant ID* | YES | YES |
| *Pieces — Call number* | YES | YES |
| *Pieces — Chronology* | YES | YES |
| *Pieces — Claiming interval* | YES | YES |
| *Pieces — Comment* | YES | YES |
| *Pieces — Copy number* | YES | YES |
| *Pieces — Created at* | YES | YES |
| *Pieces — Discovery suppress* | YES | YES |
| *Pieces — Display on holding* | YES | YES |
| *Pieces — Display summary* | YES | YES |
| *Pieces — Display to public* | YES | YES |
| *Pieces — Enumeration* | YES | YES |
| *Pieces — Expected receipt date* | YES | YES |
| *Pieces — External note* | YES | YES |
| *Pieces — Format* | YES | YES |
| *Pieces — Internal note* | YES | YES |
| *Pieces — Is bound* | YES | YES |
| *Pieces — Received date* | YES | YES |
| *Pieces — Receiving status* | YES | YES |
| *Pieces — Receiving tenant ID* | YES | YES |
| *Pieces — Sequence number* | YES | YES |
| *Pieces — Status updated date* | YES | YES |
| *Pieces — Supplement* | YES | YES |
| *Pieces — Updated at* | YES | YES |
| *Pieces — UUID* | YES | YES |
| *Item — Accession number* | YES | YES |
| *Item — Administrative notes* | YES | YES |
| *Item — Affiliation name* | YES | YES |
| *Item — Barcode* | YES | YES |
| *Item — Check in notes* | YES | YES |
| *Item — Check in notes — Note type* | YES | YES |
| *Item — Check in notes — Staff only* | YES | YES |
| *Item — Check in notes — Note* | YES | YES |
| *Item — Check out notes* | YES | YES |
| *Item — Check out notes — Note type* | YES | YES |
| *Item — Check out notes — Staff only* | YES | YES |
| *Item — Check out notes — Note* | YES | YES |
| *Item — Chronology* | YES | YES |
| *Item — Copy number* | YES | YES |
| *Item — Created date* | YES | YES |
| *Item — Description of pieces* | YES | YES |
| *Item — Display summary* | YES | YES |
| *Item — Effective call number* | YES | YES |
| *Item — Effective shelving order* | YES | YES |
| *Item — Effective shelving order* | YES | YES |
| *Item — Electronic access — URI* | YES | YES |
| *Item — Electronic access — Link text* | YES | YES |
| *Item — Electronic access — Material specified* | YES | YES |
| *Item — Electronic access — URL public note* | YES | YES |
| *Item — Electronic access — URL relationship* | YES | YES |
| *Item — Enumeration* | YES | YES |
| *Item — Former identifiers* | YES | YES |
| *Item — Item additional call numbers* | NO | YES |
| *Item — Item additional call numbers — Call number* | YES | YES |
| *Item — Item additional call numbers — Prefix* | YES | YES |
| *Item — Item additional call numbers — Suffix* | YES | YES |
| *Item — Item additional call numbers — Type* | YES | YES |
| *Item — Item call number* | YES | YES |
| *Item — Item call number prefix* | YES | YES |
| *Item — Item call number suffix* | YES | YES |
| *Item — Item damaged status* | YES | YES |
| *Item — Item damaged status date* | YES | YES |
| *Item — Item HRID* | YES | YES |
| *Item — Item UUID* | YES | YES |
| *Item — Last check in date time* | YES | YES |
| *Item — Missing pieces* | YES | YES |
| *Item — Missing pieces date* | YES | YES |
| *Item — Notes* | YES | YES |
| *Item — Notes — Staff only* | YES | YES |
| *Item — Notes — Note* | YES | YES |
| *Item — Notes — Note type* | YES | YES |
| *Item — Number of missing pieces* | YES | YES |
| *Item — Number of pieces* | YES | YES |
| *Item — Purchase order line identifier* | YES | YES |
| *Item — Sort order* | YES | YES |
| *Item — Statistical codes* | YES | YES |
| *Item — Status* | YES | YES |
| *Item — Status date* | YES | YES |
| *Item — Suppress from discovery* | YES | YES |
| *Item — Tags* | YES | YES |
| *Item — Tenant ID* | YES | YES |
| *Item — Updated date* | YES | YES |
| *Item — Version* | YES | YES |
| *Item — Volume* | YES | YES |
| *Item — Year, caption* | YES | YES |
| *Location — Code* | YES | YES |
| *Location — Name* | YES | YES |
| *POL — Acquisition method* | YES | YES |
| *POL — Agreement UUID* | YES | YES |
| *POL — Cost currency* | YES | YES |
| *POL — Cost exchange rate* | YES | YES |
| *POL — Cost PO line estimated price* | YES | YES |
| *POL — Created at* | YES | YES |
| *POL — Description* | YES | YES |
| *POL — Details receiving note* | YES | YES |
| *POL — Donor* | YES | YES |
| *POL — E-resource create inventory* | YES | YES |
| *POL — E-resource expected activation* | YES | YES |
| *POL — E-resource is activated* | YES | YES |
| *POL — E-resource is trial* | YES | YES |
| *POL — E-resource resource url* | YES | YES |
| *POL — Fund distribution* | YES | YES |
| *POL — Fund distribution — Encumbrance UUID* | YES | YES |
| *POL — Fund distribution — Value* | YES | YES |
| *POL — Fund distribution — Fund* | YES | YES |
| *POL — Fund distribution — Expense class* | YES | YES |
| *POL — Fund distribution — Distribution type* | YES | YES |
| *POL — Fund distribution — Code* | YES | YES |
| *POL — Is rush* | YES | YES |
| *POL — Locations* | YES | YES |
| *POL — Locations — Quantity electronic* | YES | YES |
| *POL — Locations — Quantity physical* | YES | YES |
| *POL — Locations — Name* | YES | YES |
| *POL — Locations — Code* | YES | YES |
| *POL — Locations — Affiliation* | YES | YES |
| *POL — Membership* | YES | YES |
| *POL — Order format* | YES | YES |
| *POL — Payment status* | YES | YES |
| *POL — Physical expected receipt date* | YES | YES |
| *POL — PO line number* | YES | YES |
| *POL — Publication date* | YES | YES |
| *POL — Publisher* | YES | YES |
| *POL — Receipt date* | YES | YES |
| *POL — Receipt status* | YES | YES |
| *POL — Selector* | YES | YES |
| *POL — Source* | YES | YES |
| *POL — Tags* | YES | YES |
| *POL — Title or package* | YES | YES |
| *POL — Updated at* | YES | YES |
| *POL — UUID* | YES | YES |
| *PO — Acquisition unit names* | YES | YES |
| *PO — Acquisition unit UUIDs* | YES | YES |
| *PO — Approved* | YES | YES |
| *PO — Close reason* | YES | YES |
| *PO — Created at* | YES | YES |
| *PO — Date ordered* | YES | YES |
| *PO — External order number* | YES | YES |
| *PO — Order type* | YES | YES |
| *PO — PO number* | YES | YES |
| *PO — Re-encumber* | YES | YES |
| *PO — Tags* | YES | YES |
| *PO — Updated at* | YES | YES |
| *PO — UUID* | YES | YES |
| *PO — Workflow status* | YES | YES |
| *Title — Acquisition unit* | YES | YES |
| *Title — Claiming active* | YES | YES |
| *Title — Claiming interval* | YES | YES |
| *Title — Contributors* | YES | YES |
| *Title — Contributors — Name* | YES | YES |
| *Title — Created at* | YES | YES |
| *Title — Edition* | YES | YES |
| *Title — Expected receipt date* | YES | YES |
| *Title — Is acknowledged* | YES | YES |
| *Title — Next sequence number* | YES | YES |
| *Title — Package name* | YES | YES |
| *Title — PO line number* | YES | YES |
| *Title — Product identifiers* | YES | YES |
| *Title — Product identifiers — Product ID* | YES | YES |
| *Title — Product identifiers — Qualifier* | YES | YES |
| *Title — Product identifiers — Product ID type* | YES | YES |
| *Title — Published date* | YES | YES |
| *Title — Publisher* | YES | YES |
| *Title — Receiving note* | YES | YES |
| *Title — Subscription from* | YES | YES |
| *Title — Subscription interval* | YES | YES |
| *Title — Subscription to* | YES | YES |
| *Title — Title* | YES | YES |
| *Title — Updated at* | YES | YES |
| *Title — UUID* | YES | YES |
| *Holdings — Acquisition method* | YES | YES |
| *Holdings — Acquisition order format* | YES | YES |
| *Holdings — Acquisition receipt status* | YES | YES |
| *Holdings — Administrative notes* | YES | YES |
| *Holdings — Affiliation name* | YES | YES |
| *Holdings — Call number* | YES | YES |
| *Holdings — Call number prefix* | YES | YES |
| *Holdings — Call number suffix* | YES | YES |
| *Holdings — Call number type* | YES | YES |
| *Holdings — Copy number* | YES | YES |
| *Holdings — Created date* | YES | YES |
| *Holdings — Digitization policy* | YES | YES |
| *Holdings — Electronic access* | YES | YES |
| *Holdings — Electronic access — URI* | YES | YES |
| *Holdings — Electronic access — Link text* | YES | YES |
| *Holdings — Electronic access — Material specified* | YES | YES |
| *Holdings — Electronic access — URL public note* | YES | YES |
| *Holdings — Electronic access — URL relationship* | YES | YES |
| *Holdings — Former identifiers* | YES | YES |
| *Holdings — Holdings additional call numbers* | YES | YES |
| *Holdings — Holdings additional call numbers — Call number* | YES | YES |
| *Holdings — Holdings additional call numbers — Prefix* | YES | YES |
| *Holdings — Holdings additional call numbers — Suffix* | YES | YES |
| *Holdings — Holdings additional call numbers — Type* | YES | YES |
| *Holdings — HRID* | YES | YES |
| *Holdings — Instance UUID* | YES | YES |
| *Holdings — Notes* | NO | YES |
| *Holdings — Notes — Staff only* | YES | YES |
| *Holdings — Notes — Note* | YES | YES |
| *Holdings — Notes — Note type* | YES | YES |
| *Holdings — Number of items* | YES | YES |
| *Holdings — Receiving history* | YES | YES |
| *Holdings — Receiving history — Public display* | YES | YES |
| *Holdings — Receiving history — Enumeration* | YES | YES |
| *Holdings — Receiving history — Chronology* | YES | YES |
| *Holdings — Record version* | YES | YES |
| *Holdings — Retention policy* | YES | YES |
| *Holdings — Shelving title* | YES | YES |
| *Holdings — Statements* | NO | YES |
| *Holdings — Statements — Statement* | YES | YES |
| *Holdings — Statements — Statement public note* | YES | YES |
| *Holdings — Statements — Statement staff note* | YES | YES |
| *Holdings — Statements for indexes* | NO | YES |
| *Holdings — Statements for indexes — Statement for indexes* | YES | YES |
| *Holdings — Statements for indexes — Statement for indexes public note* | YES | YES |
| *Holdings — Statements for indexes — Statement for indexes staff note* | YES | YES |
| *Holdings — Statements for supplements* | NO | YES |
| *Holdings — Statements for supplements — Statement for supplement* | YES | YES |
| *Holdings — Statements for supplements — Statement for supplement public note* | YES | YES |
| *Holdings — Statements for supplements — Statement for supplement staff note* | YES | YES |
| *Holdings — Statistical code UUIDs* | YES | YES |
| *Holdings — Statistical codes* | YES | YES |
| *Holdings — Suppress from discovery* | YES | YES |
| *Holdings — Tags* | YES | YES |
| *Holdings — Tenant ID* | YES | YES |
| *Holdings — Updated date* | YES | YES |
| *Holdings — UUID* | YES | YES |
| *Holdings permanent location — Code* | YES | YES |
| *Holdings permanent location — Name* | YES | YES |
| *Created by — Email* | YES | YES |
| *Created by — Last name, first name* | YES | YES |
| *Created by — Username* | YES | YES |
| *Updated by — Email* | YES | YES |
| *Updated by — Last name, first name* | YES | YES |
| *Updated by — Username* | YES | YES |

### Receiving titles
| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Title — Acquisition unit* | YES | YES |
| *Title — Claiming active* | YES | YES |
| *Title — Claiming interval* | YES | YES |
| *Title — Contributors* | NO | YES |
| *Title — Contributors — Name* | YES | YES |
| *Title — Created at* | YES | YES |
| *Title — Edition* | YES | YES |
| *Title — Expected receipt date* | YES | YES |
| *Title — Is acknowledged* | YES | YES |
| *Title — Next sequence number* | YES | YES |
| *Title — Package name* | YES | YES |
| *Title — PO line number* | YES | YES |
| *Title — Product identifiers* | YES | YES |
| *Title — Product identifiers — Product ID* | YES | YES |
| *Title — Product identifiers — Qualifier* | YES | YES |
| *Title — Product identifiers — Product ID type* | YES | YES |
| *Title — Published date* | YES | YES |
| *Title — Publisher* | YES | YES |
| *Title — Receiving note* | YES | YES |
| *Title — Subscription from* | YES | YES |
| *Title — Subscription interval* | YES | YES |
| *Title — Subscription to* | YES | YES |
| *Title — Title* | YES | YES |
| *Title — Updated at* | YES | YES |
| *Title — UUID* | YES | YES |
| *POL — Acquisition method* | YES | YES |
| *POL — Agreement UUID* | YES | YES |
| *POL — Cost currency* | YES | YES |
| *POL — Cost exchange rate* | YES | YES |
| *POL — Cost PO line estimated price* | YES | YES |
| *POL — Created at* | YES | YES |
| *POL — Description* | YES | YES |
| *POL — Details receiving note* | YES | YES |
| *POL — Donor* | YES | YES |
| *POL — E-resource create inventory* | YES | YES |
| *POL — E-resource expected activation* | YES | YES |
| *POL — E-resource is activated* | YES | YES |
| *POL — E-resource is trial* | YES | YES |
| *POL — E-resource resource url* | YES | YES |
| *POL — Fund distribution* | YES | YES |
| *POL — Fund distribution — Encumbrance UUID* | YES | YES |
| *POL — Fund distribution — Value* | YES | YES |
| *POL — Fund distribution — Fund* | YES | YES |
| *POL — Fund distribution — Expense class* | YES | YES |
| *POL — Fund distribution — Distribution type* | YES | YES |
| *POL — Fund distribution — Code* | YES | YES |
| *POL — Is rush* | YES | YES |
| *POL — Locations* | NO | YES |
| *POL — Locations — Quantity electronic* | YES | YES |
| *POL — Locations — Quantity physical* | YES | YES |
| *POL — Locations — Name* | YES | YES |
| *POL — Locations — Code* | YES | YES |
| *POL — Locations — Affiliation* | YES | YES |
| *POL — Membership* | YES | YES |
| *POL — Order format* | YES | YES |
| *POL — Payment status* | YES | YES |
| *POL — Physical expected receipt date* | YES | YES |
| *POL — PO line number* | YES | YES |
| *POL — Publication date* | YES | YES |
| *POL — Publisher* | YES | YES |
| *POL — Receipt date* | YES | YES |
| *POL — Receipt status* | YES | YES |
| *POL — Selector* | YES | YES |
| *POL — Source* | YES | YES |
| *POL — Tags* | YES | YES |
| *POL — Title or package* | YES | YES |
| *POL — Updated at* | YES | YES |
| *POL — UUID* | YES | YES |
| *Instance — Administrative notes* | YES | YES |
| *Instance — Affiliation name* | YES | YES |
| *Instance — Alternative titles* | NO | YES |
| *Instance — Alternative titles — Alternative title* | YES | YES |
| *Instance — Alternative titles — Alternative title type* | YES | YES |
| *Instance — Cataloged date* | YES | YES |
| *Instance — Classifications* | YES | YES |
| *Instance — Classifications — Classification* | YES | YES |
| *Instance — Classifications — Classification identifier type* | YES | YES |
| *Instance — Contributors* | YES | YES |
| *Instance — Contributors — Primary* | YES | YES |
| *Instance — Contributors — Name* | YES | YES |
| *Instance — Contributors — Type, free text* | YES | YES |
| *Instance — Contributors — Name type* | YES | YES |
| *Instance — Contributors — Type* | YES | YES |
| *Instance — Created date* | YES | YES |
| *Instance — Date 1* | YES | YES |
| *Instance — Date 2* | YES | YES |
| *Instance — Editions* | YES | YES |
| *Instance — Electronic access* | YES | YES |
| *Instance — Electronic access — URI* | YES | YES |
| *Instance — Electronic access — Link text* | YES | YES |
| *Instance — Electronic access — Material specified* | YES | YES |
| *Instance — Electronic access — URL public note* | YES | YES |
| *Instance — Electronic access — URL relationship* | YES | YES |
| *Instance — Flag for deletion* | YES | YES |
| *Instance — Format names* | YES | YES |
| *Instance — Identifiers* | YES | YES |
| *Instance — Identifiers — Identifier* | YES | YES |
| *Instance — Identifiers — Identifier type* | YES | YES |
| *Instance — Index title* | YES | YES |
| *Instance — Instance format UUIDs* | YES | YES |
| *Instance — Instance HRID* | YES | YES |
| *Instance — Instance source URI* | YES | YES |
| *Instance — Instance UUID* | YES | YES |
| *Instance — Languages* | YES | YES |
| *Instance — Mode of issuance* | YES | YES |
| *Instance — Nature of content* | YES | YES |
| *Instance — Notes* | YES | YES |
| *Instance — Notes — Staff only* | YES | YES |
| *Instance — Notes — Note* | YES | YES |
| *Instance — Notes — Note type* | YES | YES |
| *Instance — Physical descriptions* | YES | YES |
| *Instance — Previously held* | YES | YES |
| *Instance — Publication frequency* | YES | YES |
| *Instance — Publication range* | YES | YES |
| *Instance — Publications* | NO | YES |
| *Instance — Publications — Publisher* | YES | YES |
| *Instance — Publications — Publisher role* | YES | YES |
| *Instance — Publications — Place of publication* | YES | YES |
| *Instance — Publications — Publication date* | YES | YES |
| *Instance — Record version* | YES | YES |
| *Instance — Resource title* | YES | YES |
| *Instance — Resource type* | YES | YES |
| *Instance — Series* | YES | YES |
| *Instance — Shared* | YES | YES |
| *Instance — Source* | YES | YES |
| *Instance — Staff suppress* | YES | YES |
| *Instance — Statistical code UUIDs* | NO | YES |
| *Instance — Statistical codes* | YES | YES |
| *Instance — Subjects* | NO | YES |
| *Instance — Subjects — Subject headings* | YES | YES |
| *Instance — Subjects — Subject source* | YES | YES |
| *Instance — Subjects — Subject type* | YES | YES |
| *Instance — Suppress from discovery* | YES | YES |
| *Instance — Tags* | YES | YES |
| *Instance — Tenant ID* | YES | YES |
| *Instance — Updated date* | YES | YES |
| *Created by — Email* | YES | YES |
| *Created by — Last name, first name* | YES | YES |
| *Created by — Username* | YES | YES |
| *Updated by — Email* | YES | YES |
| *Updated by — Last name, first name* | YES | YES |
| *Updated by — Username* | YES | YES |

### Transactions
| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Transaction - Amount* | YES | YES |
| *Transaction - Created date* | YES | YES |
| *Transaction - Currency* | YES | YES |
| *Transaction - Description* | YES | YES |
| *Transaction - Encumbrance amount credited* | YES | YES |
| *Transaction - Encumbrance awaiting payment* | YES | YES |
| *Transaction - Encumbrance expended* | YES | YES |
| *Transaction - Encumbrance initial amount* | YES | YES |
| *Transaction - Encumbrance order status* | YES | YES |
| *Transaction - Encumbrance order type* | YES | YES |
| *Transaction - Encumbrance re-encumber* | YES | YES |
| *Transaction - Encumbrance status* | YES | YES |
| *Transaction - Encumbrance subscription* | YES | YES |
| *Transaction - Invoice cancelled* | YES | YES |
| *Transaction - Source* | YES | YES |
| *Transaction - Tags* | NO | YES |
| *Transaction - Type* | YES | YES |
| *Transaction - Updated date* | YES | YES |
| *Transaction - UUID* | YES | YES |
| *To fund - Acquisition unit names* | YES | YES |
| *To fund - Code* | YES | YES |
| *To fund - Created date* | YES | YES |
| *To fund - Description* | YES | YES |
| *To fund - Donor organizations* | YES | YES |
| *To fund - External account number* | YES | YES |
| *To fund - Locations* | NO | YES |
| *To fund - Name* | YES | YES |
| *To fund - Restrict by locations* | YES | YES |
| *To fund - Status* | YES | YES |
| *To fund - Tags* | NO | YES |
| *To fund - Transfer from* | YES | YES |
| *To fund - Transfer to* | YES | YES |
| *To fund - Updated date* | YES | YES |
| *To fund - UUID* | YES | YES |
| *To fund - Version* | YES | YES |
| *From fund - Acquisition unit names* | YES | YES |
| *From fund - Code* | YES | YES |
| *From fund - Created date* | YES | YES |
| *From fund - Description* | YES | YES |
| *From fund - Donor organizations* | YES | YES |
| *From fund - External account number* | YES | YES |
| *From fund - Locations* | NO | YES |
| *From fund - Name* | YES | YES |
| *From fund - Restrict by locations* | YES | YES |
| *From fund - Status* | YES | YES |
| *From fund - Tags* | NO | YES |
| *From fund - Transfer from* | YES | YES |
| *From fund - Transfer to* | YES | YES |
| *From fund - Updated date* | YES | YES |
| *From fund - UUID* | YES | YES |
| *From fund - Version* | YES | YES |
| *Fiscal year - Acquisition unit names* | YES | YES | 
| *Fiscal year - Code* | YES | YES | 
| *Fiscal year - Created date* | YES | YES | 
| *Fiscal year - Currency* | YES | YES | 
| *Fiscal year - Description* | YES | YES | 
| *Fiscal year - Name* | YES | YES | 
| *Fiscal year - Period begin date* | YES | YES | 
| *Fiscal year - Period end date* | YES | YES | 
| *Fiscal year - Series* | YES | YES | 
| *Fiscal year - Updated date* | YES | YES | 
| *Fiscal year - UUID* | NO | YES | 
| *Fiscal year - Version* | YES | YES | 


### Users

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Patron group - Name* | YES | YES |
| *User - Active* | YES | YES |
| *User - Address* | NO | YES |
| *User - Barcode* | YES | YES |
| *User - Created by user UUID* | YES | YES |
| *User - Created date* | YES | YES |
| *User - Date of birth* | YES | YES |
| *User - Department names* | YES | YES |
| *User - Department UUIDs* | NO | YES |
| *User - Email* | YES | YES |
| *User - Enrollment date* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - External system ID* | YES | YES |
| *User - First name* | YES | YES |
| *User - Last name* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Middle name* | YES | YES |
| *User - Mobile phone* | YES | YES |
| *User - Phone* | YES | YES |
| *User - Preferred contact type* | YES | YES |
| *User - Preferred first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - Proxy for* | NO | YES |
| *User - Tags* | NO | YES |
| *User - Type* | YES | YES |
| *User - Updated by user UUID* | YES | YES |
| *User - Updated date* | YES | YES |
| *User - User created date* | YES | YES |
| *User - User updated date* | YES | YES |
| *User - User UUID* | YES | YES |
| *User - Username* | YES | YES |

**Custom fields** for User records, if configured, are available for building a Users query in the Lists app. To create custom fields in User records, see [Settings \> Users \> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields). 

### Users with fees/fines, loans

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *User - Active* | YES | YES |
| *User - Address* | NO | YES |
| *User - Barcode* | YES | YES |
| *User - Created by user UUID* | YES | YES |
| *User - Date of birth* | YES | YES |
| *User - Department names* | YES | YES |
| *User - Department UUIDs* | NO | YES |
| *User - Email* | YES | YES |
| *User - Enrollment date* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - External system ID* | YES | YES |
| *User - First name* | YES | YES |
| *User - Last name* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Middle name* | YES | YES |
| *User - Mobile phone* | YES | YES |
| *User - Phone* | YES | YES |
| *User - Preferred contact type* | YES | YES |
| *User - Preferred first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - Proxy for* | NO | YES |
| *User - Tags* | NO | YES |
| *User - Type* | YES | YES |
| *User - Updated by user UUID* | YES | YES |
| *User - Updated date* | YES | YES |
| *User - User created date* | YES | YES |
| *User - User updated date* | YES | YES |
| *User - User UUID* | YES | YES |
| *User — Patron group — Name* | YES | YES |
| *Fee/Fine account — Amount* | YES | YES |
| *Fee/Fine account — Barcode* | YES | YES |
| *Fee/Fine account — Created at* | YES | YES |
| *Fee/Fine account — Due date* | YES | YES |
| *Fee/Fine account — Fee/fine owner* | YES | YES |
| *Fee/Fine account — Fee/fine type* | YES | YES |
| *Fee/Fine account — Fee/fine UUID* | YES | YES |
| *Fee/Fine account — Location* | YES | YES |
| *Fee/Fine account — Material type* | YES | YES |
| *Fee/Fine account — Material type UUID* | YES | YES |
| *Fee/Fine account — Owner UUID* | YES | YES |
| *Fee/Fine account — Payment status name* | YES | YES |
| *Fee/Fine account — Remaining* | YES | YES |
| *Fee/Fine account — Returned date* | YES | YES |
| *Fee/Fine account — Status name* | YES | YES |
| *Fee/Fine account — Updated at* | YES | YES |
| *Fee/Fine account — User UUID* | YES | YES |
| *Fee/Fine account — UUID* | YES | YES |
| *Loan — Action* | YES | YES |
| *Loan — Checkout date* | YES | YES |
| *Loan — Claimed returned date* | YES | YES |
| *Loan — Created at* | YES | YES |
| *Loan — Created by user UUID* | YES | YES |
| *Loan — Declared lost date* | YES | YES |
| *Loan — Due date* | YES | YES |
| *Loan — Due date changed by recall* | YES | YES |
| *Loan — Renewal count* | YES | YES |
| *Loan — Return date* | YES | YES |
| *Loan — Status name* | YES | YES |
| *Loan — Updated by user UUID* | YES | YES |
| *Loan — UUID* | YES | YES |
| *Item — Accession number* | YES | YES |
| *Item — Administrative notes* | YES | YES |
| *Item — Affiliation name* | YES | YES |
| *Item — Barcode* | YES | YES |
| *Item — Check in notes* | YES | YES |
| *Item — Check in notes — Note type* | YES | YES |
| *Item — Check in notes — Staff only* | YES | YES |
| *Item — Check in notes — Note* | YES | YES |
| *Item — Check out notes* | YES | YES |
| *Item — Check out notes — Note type* | YES | YES |
| *Item — Check out notes — Staff only* | YES | YES |
| *Item — Check out notes — Note* | YES | YES |
| *Item — Chronology* | YES | YES |
| *Item — Copy number* | YES | YES |
| *Item — Created date* | YES | YES |
| *Item — Description of pieces* | YES | YES |
| *Item — Display summary* | YES | YES |
| *Item — Effective call number* | YES | YES |
| *Item — Effective shelving order* | YES | YES |
| *Item — Electronic access* | YES | YES |
| *Item — Electronic access — URI* | YES | YES |
| *Item — Electronic access — Link text* | YES | YES |
| *Item — Electronic access — Material specified* | YES | YES |
| *Item — Electronic access — URL public note* | YES | YES |
| *Item — Electronic access — URL relationship* | YES | YES |
| *Item — Enumeration* | YES | YES |
| *Item — Former identifiers* | YES | YES |
| *Item — Item additional call numbers* | NO | YES |
| *Item — Item additional call numbers — Call number* | YES | YES |
| *Item — Item additional call numbers — Prefix* | YES | YES |
| *Item — Item additional call numbers — Suffix* | YES | YES |
| *Item — Item additional call numbers — Type* | YES | YES |
| *Item — Item call number* | YES | YES |
| *Item — Item call number prefix* | YES | YES |
| *Item — Item call number suffix* | YES | YES |
| *Item — Item damaged status* | YES | YES |
| *Item — Item damaged status date* | YES | YES |
| *Item — Item HRID* | YES | YES |
| *Item — Item — Item HRID* | YES | YES |
| *Item — Missing pieces* | YES | YES |
| *Item — Missing pieces date* | YES | YES |
| *Item — Notes* | YES | YES |
| *Item — Notes — Staff only* | YES | YES |
| *Item — Notes — Note* | YES | YES |
| *Item — Notes — Note type* | YES | YES |
| *Item — Number of missing pieces* | YES | YES |
| *Item — Number of pieces* | YES | YES |
| *Item — Purchase order line identifier* | YES | YES |
| *Item — Sort order* | YES | YES |
| *Item — Statistical codes* | YES | YES |
| *Item — Status* | YES | YES |
| *Item — Status date* | YES | YES |
| *Item — Suppress from discovery* | YES | YES |
| *Item — Tags* | YES | YES |
| *Item — Tenant ID* | YES | YES |
| *Item — Updated date* | YES | YES |
| *Item — Version* | YES | YES |
| *Item — Volume* | YES | YES |
| *Item — Year, caption* | YES | YES |

### Users with manual blocks

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *User — Active* | YES | YES |
| *User — Address* | NO | YES |
| *User — Address — Primary address* | YES | YES |
| *User — Address — City* | YES | YES |
| *User — Address — Region* | YES | YES |
| *User — Address — Postal code* | YES | YES |
| *User — Address — Line 1* | YES | YES |
| *User — Address — Line 2* | YES | YES |
| *User - Barcode* | YES | YES |
| *User - Created by user UUID* | YES | YES |
| *User - Date of birth* | YES | YES |
| *User - Department names* | YES | YES |
| *User - Department UUIDs* | NO | YES |
| *User - Email* | YES | YES |
| *User - Enrollment date* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - External system ID* | YES | YES |
| *User - First name* | YES | YES |
| *User - Last name* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Middle name* | YES | YES |
| *User - Mobile phone* | YES | YES |
| *User - Phone* | YES | YES |
| *User - Preferred contact type* | YES | YES |
| *User - Preferred first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - Proxy for* | NO | YES |
| *User - Tags* | NO | YES |
| *User - Type* | YES | YES |
| *User - Updated by user UUID* | YES | YES |
| *User - Updated date* | YES | YES |
| *User - User created date* | YES | YES |
| *User - User updated date* | YES | YES |
| *User - User UUID* | YES | YES |
| *User — Patron group — Name* | YES | YES |
| *Manual blocks — Borrowing* | YES | YES |
| *Manual blocks — Code* | YES | YES |
| *Manual blocks — Created at* | YES | YES |
| *Manual blocks — Description* | YES | YES |
| *Manual blocks — Expiration date* | YES | YES |
| *Manual blocks — Patron message* | YES | YES |
| *Manual blocks — Renewals* | YES | YES |
| *Manual blocks — Requests* | YES | YES |
| *Manual blocks — Staff information* | YES | YES |
| *Manual blocks — Updated at* | YES | YES |
| *Manual blocks — UUID* | YES | YES |
| *Manual blocks — Created by — Email* | YES | YES |
| *Manual blocks — Created by — Last name, first name* | YES | YES |
| *Manual blocks — Created by — Username* | YES | YES |
| *Manual blocks — Updated by — Email* | YES | YES |
| *Manual blocks — Updated by — Last name, first name* | YES | YES |
| *Manual blocks — Updated by — Username* | YES | YES |

### Users with open transactions

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *User — Active* | YES | YES |
| *User — Address* | NO | YES |
| *User — Address — Primary address* | YES | YES |
| *User — Address — City* | YES | YES |
| *User — Address — Region* | YES | YES |
| *User — Address — Postal code* | YES | YES |
| *User — Address — Line 1* | YES | YES |
| *User — Address — Line 2* | YES | YES |
| *User - Barcode* | YES | YES |
| *User - Created by user UUID* | YES | YES |
| *User - Date of birth* | YES | YES |
| *User - Department names* | YES | YES |
| *User - Department UUIDs* | NO | YES |
| *User - Email* | YES | YES |
| *User - Enrollment date* | YES | YES |
| *User - Expiration date* | YES | YES |
| *User - External system ID* | YES | YES |
| *User - First name* | YES | YES |
| *User - Last name* | YES | YES |
| *User - Last name, first name* | YES | YES |
| *User - Middle name* | YES | YES |
| *User - Mobile phone* | YES | YES |
| *User - Phone* | YES | YES |
| *User - Preferred contact type* | YES | YES |
| *User - Preferred first name* | YES | YES |
| *User - Pronouns* | YES | YES |
| *User - Proxy for* | NO | YES |
| *User - Tags* | NO | YES |
| *User - Type* | YES | YES |
| *User - Updated by user UUID* | YES | YES |
| *User - Updated date* | YES | YES |
| *User - User created date* | YES | YES |
| *User - User updated date* | YES | YES |
| *User - User UUID* | YES | YES |
| *User — Patron group — Name* | YES | YES |
| *Transactions — Automated blocks* | YES | YES |
| *Transactions — Has open transactions* | YES | YES |
| *Transactions — Manual blocks* | YES | YES |
| *Transactions — Open fees/fines* | YES | YES |
| *Transactions — Open loans* | YES | YES |
| *Transactions — Open proxies* | YES | YES |
| *Transactions — Open requests* | YES | YES |
| *Transactions — User UUID* | YES | YES |
| *Transactions — UUID* | YES | YES |

### Voucher lines

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Amount* | YES | YES | 
| *Created date* | YES | YES |
| *External account number* | YES | YES |
| *Fund distribution* | NO | YES |
| *Fund distribution — Encumbrance UUID* | YES | YES |
| *Fund distribution — Invoice line UUID* | YES | YES |
| *Fund distribution — Value* | YES | YES |
| *Fund distribution — Fund* | YES | YES |
| *Fund distribution — Expense class* | YES | YES |
| *Fund distribution — Distribution type* | YES | YES |
| *Fund distribution — Code* | YES | YES |
| *Updated date* | YES | YES |
| *UUID* | YES | YES |

### Voucher lines with fund

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Voucher line - Amount* | YES | YES | 
| *Voucher line - Created date* | YES | YES |
| *Voucher line - External account number* | YES | YES |
| *Voucher line - Fund distribution* | NO | YES |
| *Voucher line - Updated date* | YES | YES |
| *Voucher line - UUID* | YES | YES |
| *Voucher - Account number* | YES | YES | 
| *Voucher - Accounting code* | YES | YES | 
| *Voucher - Acquisition unit names* | YES | YES | 
| *Voucher - Batch group* | YES | YES | 
| *Voucher - Created date* | YES | YES | 
| *Voucher - Disbursement amount* | YES | YES | 
| *Voucher - Disbursement date* | YES | YES | 
| *Voucher - Disbursement number* | YES | YES | 
| *Voucher - Enclosure needed* | YES | YES | 
| *Voucher - Exchange rate* | YES | YES | 
| *Voucher - Export to accounting* | YES | YES | 
| *Voucher - Invoice currency* | YES | YES | 
| *Voucher - Status* | YES | YES | 
| *Voucher - System currency* | YES | YES | 
| *Voucher - Total* | YES | YES | 
| *Voucher - Type* | YES | YES | 
| *Voucher - Updated date* | YES | YES | 
| *Voucher - UUID* | YES | YES | 
| *Voucher - Voucher date* | YES | YES | 
| *Voucher - Voucher number* | YES | YES | 
| *Fund - Acquisition unit names* | YES | YES |
| *Fund - Code* | YES | YES |
| *Fund - Created date* | YES | YES |
| *Fund - Description* | YES | YES |
| *Fund - Donor organizations* | YES | YES |
| *Fund - External account number* | YES | YES |
| *Fund - Locations* | NO | YES |
| *Fund - Name* | YES | YES |
| *Fund - Restrict by locations* | YES | YES |
| *Fund - Status* | YES | YES |
| *Fund - Tags* | NO | YES |
| *Fund - Transfer from* | YES | YES |
| *Fund - Transfer to* | YES | YES |
| *Fund - Updated date* | YES | YES |
| *Fund - UUID* | YES | YES |
| *Fund - Version* | YES | YES |
| *Fund type - Type* | YES | YES | 
| *Ledger - Acquisition unit names* | YES | YES |
| *Ledger - Code* | YES | YES |
| *Ledger - Created date* | YES | YES |
| *Ledger - Currency* | YES | YES |
| *Ledger - Description* | YES | YES |
| *Ledger - Fiscal year one* | YES | YES |
| *Ledger - Name* | YES | YES |
| *Ledger - Restrict encumbrance* | YES | YES |
| *Ledger - Restrict expenditures* | YES | YES |
| *Ledger - Status* | YES | YES |
| *Ledger - Updated date* | YES | YES |
| *Ledger - UUID* | YES | YES |
| *Ledger - Version* | YES | YES |

### Voucher lines with invoice, fund, organization

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: |
| *Voucher line - Amount* | YES | YES | 
| *Voucher line - Created date* | YES | YES |
| *Voucher line - External account number* | YES | YES |
| *Voucher line - Fund distribution* | NO | YES |
| *Voucher line - Updated date* | YES | YES |
| *Voucher line - UUID* | YES | YES |
| *Voucher - Account number* | YES | YES | 
| *Voucher - Accounting code* | YES | YES | 
| *Voucher - Acquisition unit names* | YES | YES | 
| *Voucher - Batch group* | YES | YES | 
| *Voucher - Created date* | YES | YES | 
| *Voucher - Disbursement amount* | YES | YES | 
| *Voucher - Disbursement date* | YES | YES | 
| *Voucher - Disbursement number* | YES | YES | 
| *Voucher - Enclosure needed* | YES | YES | 
| *Voucher - Exchange rate* | YES | YES | 
| *Voucher - Export to accounting* | YES | YES | 
| *Voucher - Invoice currency* | YES | YES | 
| *Voucher - Status* | YES | YES | 
| *Voucher - System currency* | YES | YES | 
| *Voucher - Total* | YES | YES | 
| *Voucher - Type* | YES | YES | 
| *Voucher - Updated date* | YES | YES | 
| *Voucher - UUID* | YES | YES | 
| *Voucher - Voucher date* | YES | YES | 
| *Voucher - Voucher number* | YES | YES | 
| *Invoice - Account number* | YES | YES | 
| *Invoice - Accounting code* | YES | YES | 
| *Invoice - Acquisition unit names* | YES | YES | 
| *Invoice - Approved by name* | YES | YES | 
| *Invoice - Approved date* | YES | YES | 
| *Invoice - Batch group* | YES | YES | 
| *Invoice - Bill to* | NO | YES | 
| *Invoice - Cancellation note* | YES | YES | 
| *Invoice - Check subscription overlap* | YES | YES |
| *Invoice - Created date* | YES | YES | 
| *Invoice - Currency* | YES | YES | 
| *Invoice - Enclosure needed* | YES | YES | 
| *Invoice - Exchange rate* | YES | YES | 
| *Invoice - Export to accounting* | YES | YES | 
| *Invoice - Fiscal year* | YES | YES | 
| *Invoice - Folio invoice number* | YES | YES | 
| *Invoice - Invoice date* | YES | YES | 
| *Invoice - Note* | YES | YES | 
| *Invoice - Payment date* | YES | YES | 
| *Invoice - Payment due* | YES | YES | 
| *Invoice - Payment method* | YES | YES| 
| *Invoice - Source* | YES | YES | 
| *Invoice - Status* | YES | YES | 
| *Invoice - Sub-total* | YES | YES | 
| *Invoice - Tags* | NO | YES | 
| *Invoice - Terms* | YES | YES | 
| *Invoice - Total adjustments* | YES | YES | 
| *Invoice - Total calculated amount* | YES | YES | 
| *Invoice - Total units* | NO | YES | 
| *Invoice - Updated date* | YES | YES | 
| *Invoice - UUID* | YES | YES | 
| *Invoice - Vendor invoice number* | YES | YES | 
| *Invoice - Vendor name* | YES | YES | 
| *Invoice - Voucher number* | YES | YES |
| *Fund - Acquisition unit names* | YES | YES |
| *Fund - Code* | YES | YES |
| *Fund - Created date* | YES | YES |
| *Fund - Description* | YES | YES |
| *Fund - Donor organizations* | YES | YES |
| *Fund - External account number* | YES | YES |
| *Fund - Locations* | NO | YES |
| *Fund - Name* | YES | YES |
| *Fund - Restrict by locations* | YES | YES |
| *Fund - Status* | YES | YES |
| *Fund - Tags* | NO | YES |
| *Fund - Transfer from* | YES | YES |
| *Fund - Transfer to* | YES | YES |
| *Fund - Updated date* | YES | YES |
| *Fund - UUID* | YES | YES |
| *Fund - Version* | YES | YES |
| *Fund type - Type* | YES | YES | 
| *Ledger - Acquisition unit names* | YES | YES |
| *Ledger - Code* | YES | YES |
| *Ledger - Created date* | YES | YES |
| *Ledger - Currency* | YES | YES |
| *Ledger - Description* | YES | YES |
| *Ledger - Fiscal year one* | YES | YES |
| *Ledger - Name* | YES | YES |
| *Ledger - Restrict encumbrance* | YES | YES |
| *Ledger - Restrict expenditures* | YES | YES |
| *Ledger - Status* | YES | YES |
| *Ledger - Updated date* | YES | YES |
| *Ledger - UUID* | YES | YES |
| *Ledger - Version* | YES | YES |
| *Organization - Code* | YES | YES |
| *Organization - EDI vendor code* | YES | YES |
| *Organization - EDI vendor type* | YES | YES |
| *Organization - Is donor* | YES | YES |
| *Organization - Is vendor* | YES | YES |
| *Organization - Name* | YES | YES |
| *Organization - Status* | YES | YES |
| *Organization - UUID* | YES | YES |

### Vouchers

| *Field name* in Lists app | Can use to build query in UI? | Option to show as column heading in UI? | 
| :----- | :-----: | :-----: | 
| *Voucher - Account number* | YES | YES | 
| *Voucher - Accounting code* | YES | YES | 
| *Voucher - Acquisition unit names* | YES | YES | 
| *Voucher - Batch group* | YES | YES | 
| *Voucher - Created date* | YES | YES | 
| *Voucher - Disbursement amount* | YES | YES | 
| *Voucher - Disbursement date* | YES | YES | 
| *Voucher - Disbursement number* | YES | YES | 
| *Voucher - Enclosure needed* | YES | YES | 
| *Voucher - Exchange rate* | YES | YES | 
| *Voucher - Export to accounting* | YES | YES | 
| *Voucher - Invoice currency* | YES | YES | 
| *Voucher - Status* | YES | YES | 
| *Voucher - System currency* | YES | YES | 
| *Voucher - Total* | YES | YES | 
| *Voucher - Type* | YES | YES | 
| *Voucher - Updated date* | YES | YES | 
| *Voucher - UUID* | YES | YES | 
| *Voucher - Voucher date* | YES | YES | 
| *Voucher - Voucher number* | YES | YES | 
| *Vendor - Code* | YES | YES |
| *Vendor - EDI vendor code* | YES | YES |
| *Vendor - EDI vendor type* | YES | YES |
| *Vendor - Is donor* | YES | YES |
| *Vendor - Is vendor* | YES | YES |
| *Vendor - Name* | YES | YES |
| *Vendor - Status* | YES | YES |
| *Vendor - UUID* | YES| YES |


## View a list


To view a list, open the Lists app. A list of Lists is displayed in the **Lists** pane. Select a list to view by highlighting and clicking on it. The selected list opens in a new window.


### Filters


The selection of lists in the **Lists** pane can be narrowed by applying filters. The following filters are available: 


- **Status**
  - **Active**. An active list contains a query and a resulting record set. 
  - **Inactive**. An inactive list contains a query but no record set.

- **Visibility**
  - **Shared:**. Shared lists can be accessed by all users with permissions to the Lists app in this organization. 
  - **Private**. Private lists can only be accessed by the user logged in.
    
- **Record Types**. See [Supported fields by record type](#supported-fields-by-record-type) above for more information. 


### List information 


The **List information** section displays details about the list. 

- **Record last updated**: Source of last update of list.
- **Record created**: Date, time, and source of list creation.
- **List name**: Title of the list
- **Description**: A description of the list. This criteria is optional.
- **Record type**: Record type used to create the list.
- **Visibility**: **Shared** or **Private**.  
- **Status**: **Active** or **Inactive**.
- **Source**: Username or FOLIO account used to create the list.



### Query 


The **Query** section of the list displays the query string used to retrieve the record set. It also displays the number of records in the record set and a preview of the first 100 records in the record set.


### Field headings


In a list, the fields for the record set display as column headings. Customize the display of column headings in the record set by checking or unchecking the field(s) in **Actions \> Show columns** as appropriate. See [Supported fields by record type](#supported-fields-by-record-type) above for more information about the available column headings for each record type.

To view the refreshed list, click **Actions \> Refresh List** and click the **View updated list** link in the confirmation message.


## Create a list


A new list must have **List information** and a **Query** assigned to establish the record set for the list. A **Test query** must be performed before the query can be run and saved. 


### List information


To add list details for a new list:

1. In the Lists pane, click on **New**. 
2. In the **New List** modal, add the **List name** and **Description**.
3. Select the appropriate [**Record type**](#supported-fields-by-record-type) for the list. 
4. Select the appropriate **Visibility** setting for the list: *Shared* or *Private*.
5. Select the appropriate **Status** setting for the list: *Active* or *Inactive*.


### Build a query


The **Build query** function in the Lists app allows the user to build a query for the selected record type. The query string populates in the **Query** field as the query is built. 


To set criteria and build a query for new list, follow these steps: 


1. Click the **Build query** button to open the **Build query** window. 
2. Select the **Record type** for the query. 
3. Select a **Field** from the **Filter options list** drop-down menu. The **Fields** available for selection are based on the **Record Type**. See [Supported fields by List record type](#supported-fields-by-record-type) for more information. 
4. Select an **Operator** from the **Select operator** drop-down list. The operators available for selection are based on the selected **Field**. 

| Operator | Meaning |
| :----- | :----- |
| *equals* | Field equals selected or input value. |
| *not equal to* | Field does not equal selected or input value. |
| *contains* | Field (with a single value) contains characters that match the selected or input value. |
| *contains all* | Field (that can contain multiple values) matches all selected or input values. |
| *contains any* | Field (that can contain multiple values) matches any selected or input values. |
| *not contains all* | Field (that can contain multiple values) does not contain all selected or input values. |
| *not contains any* | Field (that can contain multiple values) does not contain any selected or input values. |
| *in* | Field (with a single value) matches any selected or input values. |
| *not in* | Field (with a single value) matches none of selected or input values. |
| *starts with* | Field starts with selected or input value. |
| *is greater than* | Field is greater than the selected or input value. |
| *is less than* | Field is less than the selected or input value. |
| *is greater than or equal to* | Field is greater than or equal to the selected or input value. |
| *is less than or equal to* | Field is less than or equal to the selected or input value. |
| *is null/empty* | Field is null or has an empty value; the field does not contain any data. |
    
See [Querying Lists / FQM - operators, datatypes, examples](https://folio-org.atlassian.net/wiki/x/ToCZNw) for more information about **Operators**.

5. Select a **Value** from the **Select value** drop-down list. The **Values** available for selection are based on the **Record Type** and **Field**.
6. Click on the **+ icon** to add additional lines to the query; Click on the **trash can icon** to delete a line from the query. 
7. **Test query** is required whenever building a query for a new list. Click the **Test query** button to test the query. The total number of records retrieved and a preview of the first 100 records in the record set displays.
8. Click **Run query & save**. If saved successfully, a *(Name of List) saved successfully* message appears momentarily. Once the query is completed, a *Refresh complete with (number of) records: View updated list* displays at the top of the window.
9. Click the **View updated list** link in the confirmation message to view the record set in the list.
10. In a list, the fields of the record type display as column headings. The default display of column headings is based on the record type assigned to the list. Customize the display of column headings in the record set by checking or unchecking the field(s) in **Actions \> Show columns** as appropriate for the selected record type. See [Supported fields by record type](#supported-fields-by-record-type) for column heading options.


## Update a record set in a list


The record set in a list is static, but the metadata of each record is updated in near real-time. If modification is made to a record outside of the Lists app, the record remains in the record set of the list. The updated record can be viewed by refreshing the list.


To refresh or update the record set in a list:


1. Click **Actions \> Refresh list**. The system will re-run the query. A *Refresh complete with (number of) records* confirmation message appears at the top of the screen. 
2. Click the **View updated list** link in the confirmation message to view the updated record set in the list. 


## Edit a list


To edit the **List information** in a list: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. In the **List information** section, edit the **List name**, **Description**, **Visibility**, and/or **Status** fields as appropriate.
4. Click **Save**. A *List _ListTitle_ was saved* confirmation message will appear in the lower right corner of the screen. 


To edit the **Query** in a list, follow these steps: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. Open the **Query** accordion, if necessary, and click **Edit query**. Make changes to **Field**, **Operator**, and/or **Value** as appropriate. The **Query** field displays a preview of the query as it is edited.
4. If necessary, click on the **+ icon** to add additional rows to the query or click on the **trash can icon** to delete rows from the query. 
5. **Test query** is required whenever editing a query in an existing list. Click the **Test query** button to test the query. The total number of records retrieved and a preview of the first 100 records in the record set displays.
6. Click the **Run query & save** button. A confirmation message, *List _ListTitle_ was saved* will appear in the lower right corner of the screen. 


## Duplicate a list

To duplicate a list:

1. Select the list from the **Lists** pane. The selected list will open in a new window. 
2. Click **Actions \> Duplicate List**. If duplicating the list without making any changes, click **Save.** A confirmation message, *List _Original List Name - copy_ was saved* appears in the lower right corner of the screen. 
3. Edit the **List name**, **Description** (optional), or change **Visibility** and **Status**,  if appropriate. 
4. Edit the query, if appropriate, by clicking the **Edit query** button.
5. Make changes to **Field**, **Operator**, and/or **Value**. The **Query** field displays a preview of the query string as it is edited. If necessary, click on the **+ icon** to add additional rows to the query; click on the **trash can icon** to delete rows from the query. 
6. Click the **Test query** button to see how many records are returned and to preview the record set of the list. Test query is required when editing the query of a list before the new query can be run and saved. 
7. Click the **Run query & save** button. A confirmation message, *List _DuplicateListName_) was saved* will appear in the lower right corner of the screen. 

## Delete a list


To delete a list: 


1. Select the list from the **Lists** pane. The selected list will open in a new window. 
2. Click **Actions \> Delete List**. 
3. A confirmation modal appears: *Are you sure you want to delete the list _ListTitle_?*
4. Click the **Delete** button to delete the list.


## Export a list 


A list can be exported from the Lists app and downloaded as a .csv file. 

To export a list with selected column headings as a .csv file:

1. Select the list from the **Lists** pane. The selected list will open in a new window.  
2. Click the **Actions** button. Select or deselect the column headings to display in your exported file. The column headings available depend on the record type of the list. See [Supported fields by record type](#supported-fields-by-record-type) for more information on available column headings. 
3. Click **Actions \> Export selected columns (CSV)** to download the list as a .csv file. When successfully completed, an *Exported list …* confirmation message appears in the bottom right corner of the screen.
4. Depending on your browser settings, the exported list may be automatically saved in your Downloads folder.

To export a list with all column headings as a .csv file:

1. Select the list from the **Lists** pane. The selected list will open in a new window.  
2. Click **Actions \> Export all columns (CSV)** to download the list as a .csv file. When successfully completed, an *Exported list …* confirmation message appears in the bottom right corner of the screen.
3. Depending on your browser settings, the exported list may be automatically saved in your Downloads folder.

