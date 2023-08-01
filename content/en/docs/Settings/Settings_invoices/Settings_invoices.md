---
title: "Settings > Invoices"
linkTitle: "Invoices"
date: 2022-09-22
weight: 140
tags: ["subtopic"]   
---

The Invoices section of the Settings app is where you establish one click approvals, create preset adjustments, create batch groups, configure batch groups, and enter voucher numbers. 


## Permissions

To interact with invoice settings, users need the following permission: 



*   **Settings (Invoices): Can view and edit settings.** This permission lets you view and edit all of the Invoice settings. 

Note: This is the only permission for invoice settings. You can assign permissions to users in the Users app. 


## Settings > Invoices > Approvals

This setting lets you approve invoices with one click. Select **Approve and pay in one click** to combine the acts of approving an invoice and approving payment. If you enable this setting, the Invoices app still asks you to confirm your approval before submitting. 


## Settings > Invoices > Adjustments 

Use this setting to create preset adjustments that you can add to invoices at any time. 


### Creating an adjustment



1. Click **New.** 
2. Enter a **Description** in the box. 
3. Select a **Type** from the list: Percent, Amount. 
4. Select the **Always show** checkbox if you want the adjustment to show up automatically when you create a new invoice. Note: You can still remove an adjustment from invoices with this option enabled. 
5. Enter a **Value** in the box. 
6. Select a **Pro rate** from the list: By line, By amount, By quantity, Not prorated.  
7. Select a **Relation to total** from the list: In addition to, Separate from. Note: Adjustments that are created with a "Relation to total" value of "Separate from" are not included in the **Total adjustments** amount or **Calculated total amount** for the invoice."  
8. Select the **Export to accounting** checkbox if you want to send a copy of the adjustment to an external financial system. 
9. Click **Save & close.** The adjustment is saved. 


### Editing an adjustment



1. Find the adjustment you want to edit and click it. 
2. Click **Actions** > **Edit**. 
3. Edit the adjustment. 
4. Click **Save & close**. 


### Deleting an adjustment 



1. Select the adjustment you want to delete. 
2. In the adjustment window, select **Actions** > **Delete**. 
3. In the **Delete adjustment** dialog, click **Delete**. A confirmation message appears and the adjustment is deleted. 


## Settings > Invoices > Batch groups

Use this setting to create, edit, and delete batch groups, which are used to organize invoices  for export as vouchers to an external payment system.


### Creating a batch group


1. Click **New.** 
2. Enter a **Name** in the box.
3. Optional: Enter a **Description** in the box. 
4. Click **Save.** The Batch group is saved. 


### Editing a batch group


1. Find the Batch group you want to edit and click the **pencil icon**. 
2. Edit the **batch group**. 
3. Click **Save**. 


### Deleting a batch group



1. Find the Batch group you want to edit and click the **delete icon.** 
2. In the **Delete Batch group** dialogue box, click **Delete**. A confirmation message appears and the Batch group is deleted. 


## Settings > Invoices > Batch group configuration

Use this setting to configure batch group voucher exports. This configuration enables you to setup automated exports of files containing all invoice vouchers created since the last export. For more information about how vouchers are created, see  [Invoices > Approving an invoice]({{< ref "/invoices.md#approving-an-invoice" >}}).  All vouchers with the Export to accounting checkbox selected that were created since the last export for the batch group will be exported to a file. For more information about the Export to accounting checkbox, see  [Invoices > Extended information]({{< ref "/invoices.md#extended-information" >}}).  Each invoice generates a single unique voucher on which all fund charges are grouped by the fund external account number. 



### Configuring a batch group

1. Select a **Batch group.** 
2. Select a **Schedule export.** If you choose **Daily,** enter a time. If you choose **Weekly,** select the days and time you want the export to automatically run. 
3. Enter an **Upload location.** If this box is left blank, the export downloads the file to your computer.
4. Select a **Format:** JSON or XML. 
5. Enter a **Username** if needed for the file upload location.
6. Enter a **Password** if needed for the file upload location. 
7. Click **Save**. 

Click **Show credentials/Hide credentials** to show or hide the password. If you want to test the connection with the upload location, click **Test connection**. 



## Settings > Invoices > Voucher number

This section lets you create voucher numbers to use for invoices. 



1. Enter a **Prefix**. 
2. Enter a **Starting number**.
3. Click **Reset sequence** if you need to reset the voucher number. 
4. Select the **Allow voucher number to be edited** checkbox if you want to allow editing for the voucher number. 
