---
title: "Order status"
linkTitle: "Order status"
date: 2026-07-21
weight: 20
tags: ["subtopic"]
---

The status of an order record impacts downstream workflows related to Receiving, Invoices, and aspects of Metadata Management.

## What is workflow status and why is it significant?
Workflow status is the overall status of the order record: Pending, Open, or Closed. When an order record is created, it is saved in a 'Pending' status and cannot be opened until at least one purchase order line (POL) is associated with the order.

When an order is opened, several different events occur. See [Opening an Order](../../orders/#opening-an-order) for more information. The act of opening an order also impacts editability of select fields on the order and POL (see below).

An order can be closed automatically by the system (see below) or can be manually closed by a staff user in FOLIO. See [Closing an Order](../../orders/#closing-an-order) for more information.

## Which fields are editable when an order is open?
A library may need to edit fields on an order record with an 'Open' status. This is especially common on Ongoing and Ongoing subscription orders. Use the table below to determine if a field is editable. If the field is not listed in the table below, and order must be unopened to edit the field. See [Unopening an Order](../../orders/#unopening-an-order) for more information.

### Order fields
| One-Time   | Ongoing | Ongoing Subscription |
| -------- | ------- | ------- |
| Vendor |  Vendor   |  Vendor   |
| Acquisition unit |   Acquisition unit   |  Acquisition unit   |
| Assigned to |   Assigned to   |   Assigned to   |
| Bill to   |  Bill to   |  Bill to   |
| Ship to  |   Ship to   |  Ship to   |
| Tags  |  Tags  |  Tags  |
| Note  |  Note   |  Note  |
| Custom fields  |  Subscription  |  Subscription  |
|   |  Review date  |  Renewal interval  |
|   |  Notes |  Renewal date  |
|   |  Custom fields |  Review period  |
|   |   |  Notes |
|   |   |  Custom fields  |

### Order line fields
| One-Time   | Ongoing | Ongoing Subscription |
| -------- | ------- | ------- |
| Receiving note |  Receiving note    |  Receiving note    |
| Subsciption from |   Subsciption from   |   Subsciption from  |
| Subscription to   |  Subscription to    |  Subscription to    |
| Linked package  |   Linked package   |   Linked package  |
| Internal note  |  Internal note  |  Internal note  |
| Receipt date  |  Receipt date  | Receipt date   |
| Receipt status  | Receipt status    |   Receipt status  |
| Payment status  | Payment status    |  Payment status   |
| Claiming active  |  Claiming active   |  Claiming active   |
| Claiming interval  |  Claiming interval   |  Claiming interval   |
| Cancellation restriction  | Cancellation restriction   |  Cancellation restriction   |
| Cancellation description  | Cancellation description   |  Cancellation description  |
| Line description  |  Line description  |  Line description  |
| Tags  |  Tags  |  Tags  |
| Donor information  | Donor information   | Donor information  |
| Vendor reference number and type  |  Renewal note  | Renewal note   |
| Unit price (physical and electronic)  | Vendor reference number and type   |  Vendor reference number and type  |
| Additional cost  |  Unit price (physical and electronic)  |  Unit price (physical and electronic)  |
| Currency  |  Additional cost  |  Additional cost  |
| Set exchange rate  |  Currency  |  Currency  |
| Discount  |  Set exchange rate   |  Set exchange rate   |
| Fund distribution |  Discount  |   Discount |
| Material supplier/access provider  |  Fund distribution  | Fund distribution   |
|  Receipt/Activation due |  Material supplier/access provider   |  Material supplier/access provider   |
| Expected activation/receipt date | Receipt/Activation due  | Receipt/Activation due |
| URL  |  Expected activation/receipt date  |  Expected activation/receipt date   |
|  |  URL   |  URL |


Please note: a POL's **Quantity (physical or electronic)** field is editable when the corresponding order is in 'Open' status, only when the **Receiving workflow** field on the POL is set to 'Independent order and receipt quantity'. When the POL's **Receiving workflow** field is set to 'Synchronized order and receipt quantity', the quantity may be updated only by adding or removing pieces in the Receiving app. See [Adding an expected piece](../../receiving/#adding-an-expected-piece)

## How does FOLIO know when to close an order as 'Complete'?
An order will automatically close with a ‘Reason for closure’ of Complete if all POL associated with the order achieve one of the following:
| Receiving status   | Payment status |
| -------- | ------- |
| Fully Received  | Fully Paid    |
| Fully Received | Payment Not Required     |
| Receipt Not Required   | Fully Paid    |
| Receipt Not Required   | Payment Not Required    |
| Cancelled  | Cancelled    |
