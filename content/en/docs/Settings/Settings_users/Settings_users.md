---
title: "Settings > Users"
linkTitle: "Users"
date: 2022-12-06
weight: 220
tags: ["subtopic"]
---

The Users section in the Settings app provides configuration options for managing user records, including user information, patron blocks, fee/fine processing, permissions, and service points.

## Permissions

The following are all the permissions for Users Settings:

-   **Settings (Users): Can create, edit and remove address types.**
-   **Settings (Users): Can create, edit and remove all feefines-related entries.**
-   **Settings (Users): Can create, edit and remove comments.**
-   **Settings (Users): Can create, edit and remove feefines.**
-   **Settings (Users): Can create, edit and remove owners.**
-   **Settings (Users): Can create, edit and remove patron blocks limits.**
-   **Settings (Users): Can create, edit and remove patron blocks templates.**
-   **Settings (Users): Can create, edit and remove patron groups.**
-   **Settings (Users): Can create, edit and remove payments.**
-   **Settings (Users): Can create, edit and remove permission sets.**
-   **Settings (Users): Can create, edit and remove refunds.**
-   **Settings (Users): Can create, edit and remove transfer accounts.**
-   **Settings (Users): Can create, edit and remove transfer criteria.**
-   **Settings (Users): Can create, edit and remove waives.**
-   **Settings (Users): Can create, edit, and view custom fields.**
-   **Settings (Users): Can create, edit, view and delete custom fields.**
-   **Settings (Users): Can view and edit patron blocks conditions.**
-   **Settings (Users): Can view custom fields.**
-   **Settings (Users): Create, edit, and view departments.**
-   **Settings (Users): Create, edit, view, and delete departments.**
-   **Settings (Users): View departments.**

## Settings \> Users \> Permission sets

Use this setting to create permission sets for your library. Permission sets are customized collections of permissions that can be assigned to users. For example, you can create permission sets that correspond to specific job roles and assign the set, rather than each individual permission, to all library staff with that role.

Additionally, if permissions change because of a new release, a FOLIO administrator can edit the permission set for a particular role to update the assigned permissions. The change to the permission set then propagates out to the users who have that permission set assigned, and the administrator doesn't have to update permissions for each individual user.

### Creating a permission set

1.  In the **Permission sets** pane, click **New**.
2.  To name the permissions set, enter a **Permission set name**. The system does not automatically enforce uniqueness in naming permission sets. To avoid creating permission sets with duplicate display names, make sure this new permission set has a unique name.
Make sure the permission set name is unique.
3.  Optional: Enter a **Description** of the permission set.
4.  Under **Assigned permissions**, click **Add permission**. You can assign individual permissions or existing permission sets to the new permission set.
5.  In the **Select Permissions** modal, search and filter by **Permission type** and/or **Permission assignment status** or type in the name of the permission or permission set into the search box.
6. Select the permission(s) or permission set(s) to assign to the new permission set.
7.  Click **Save & close**. The permission(s) or permission set(s) are added to the new permission set.
8.  Click **Save & close**. The new permission set is saved.

### Editing a permission set

1.  In the **Permission Sets** pane, find the permission set you want to edit and select it.
2.  Click **Edit**.
3.  Make your desired changes to the permission set.
4.  Click **Save & Close**.

### Deleting a permission set

Note: A permission set can be deleted even if it is currently assigned to a user. Deleting the permission set removes it from the users to whom it was assigned.

1.  In the **Permission Set** pane, find the permission set you want to delete and select it.
2.  Click **Edit**.
3.  In the **Edit** window, click **Delete**.
4.  In the **Delete permission set?** dialog, click **Delete**. A confirmation message appears and the permission is deleted.

## Settings \> Users \> Patron Groups

Use this setting to create patron groups for your library. Patron groups are classes of library users. For example, you may want to create a patron group called Faculty or Undergraduates.

Only one patron group can be assigned to a user record. Patron groups are also used to create [Circulation rules](../../settings_circulation/settings_circulation/#settings--circulation--circulation-rules).

### Creating a Patron group

1.  In the **Settings app**, select **Users \> Patron groups**.
2.  In the **Patron groups** pane, click **New**.
3.  Enter a name for the **Patron group** in the box. Patron group names need to be unique and should not contain any punctuation.
4.  (Optional): Enter a **Description** of the patron group.
5.  (Optional): Enter a number in the **Expiration date offset (days)** box. This number represents
     the number of days of active status for user records assigned to the patron group.
6.  Click **Save**. The patron group is saved.

### Editing a Patron group

1.  In the **Settings app**, select **Users \> Patron groups**.
2.  In the **Patron groups** pane, find the **Patron group** you want to edit and click the **pencil icon** in the **actions** column.
3.  Make your changes to the **Patron group**, **Description**, or **Expiration offset date (days)**.
4.  Click **Save**. The changes to the patron group are saved.

### Deleting a Patron group

A patron group can only be deleted if it is no longer applied to any user records. To delete a patron group, you should first check to be sure that no users are currently assigned to that group.

To see the number of user records assigned to a patron group, complete the following:

-   In the **Users app**, in the **User search** pane, select the checkbox next to the appropriate Patron group. The list of user records assigned to that patron group appears in the **User search results** pane. The number of records found displays at the top of the pane. If *0 records found* appears, the Patron group can be deleted.

To delete a Patron group, follow these steps:

1.  In the **Settings app**, select **Users \> Patron groups**.
2.  In the **Patron groups** pane, find the patron group you want to delete and click the **trash can icon** in the **actions** column.
3.  In the **Delete Patron group** dialog, click **Delete**. A confirmation message appears and the patron group is deleted.

## Settings \> Users \> Address Types

Use this setting to configure address types. Address types are used to categorize the addresses that are entered in the [Contact information](../../../users/#contact-information) section of a user record. For example, you may want to create the address types: office, work, or home address.

Note: Address types should be first configured here before bulk loading of patrons occurs if mailing addresses are to be stored.

### Creating an address type

1.  In the **Settings app**, select **Users \> Address Types**.
2.  In the **Address Types** pane, click **New**.
3.  Enter a name for the **Address Type** in the box. The Address Type must be unique.
4.  Optional: Enter a **Description** of the Address Type.
5.  Click **Save**. The **Address Type** is created.

### Editing an address type

1.  In the **Settings app**, select **Users \> Address Types**.
2.  In the **Address Types** pane, find the Address Type you want to edit and click the **pencil
     icon** in the **actions** menu.
3.  Make your changes to the **Address Type** or **Description**.
4.  Click **Save**. The **Address Type** is saved.

### Deleting an address type

An address type can be deleted only if it is not assigned to any user records. To delete an **Address Type**, you should first check to make sure no user records are assigned the address type.

To see the number of user records assigned to an **Address Type**:
In Settings \> Users \> Address Types, the number of user records assigned to an Address Type will display in the **# of Addresses** column. If a *-* is displayed, the address type can be deleted.

To delete an **Address Type**, follow these steps:

In the **Settings app**, select **Users \> Address Types**.
In the **Address Types** pane, find the Address Type you want to delete and click the **trash can icon** in the **actions** column.
In the **Delete Address Type** dialog, click on the **Delete** button. A confirmation message appears and the **Address Type** is deleted.

## Settings \> Users \> Departments

Use this setting to configure departments. Departments can be added in the [Extended information](../../../users/#extended-information) section of a user record. For example, you may want to add departments to reflect library staff or faculty's departments.

### Creating a department

1. In the **Settings app**, select **Users \> Department**.
2. In the **Departments** pane, click **New**.
3.  Enter a **Name** for the department in the box.
4.  Enter a department **Code** in the box.
5.  Click **Save**. The department is saved.

### Editing a department

In the **Settings app**, select **Users \> Department**.
In the **Departments** pane, find the department you want to edit and click the **pencil icon** in the **actions** column.
Make your changes to the **Name** or **Code**.
Click **Save**. The department is updated.

### Deleting a department

 In the **Settings app**, select **Users \> Department**.
In the **Departments** pane, find the department you want to delete and click the **trash can icon** in the **actions** column.
In the **Delete Department** dialog, click **Delete**. A confirmation message appears and the department is deleted.

## Settings \> Users \> Custom fields

Use this setting to configure custom fields. Custom fields are used to track additional information in a user record.

### Creating a custom field

1.  In the **Custom fields** pane, click **New**.
2.  In the **Edit custom fields** pane, in the **Accordion title** box, enter the name of the user record section for the custom field(s).
3.  Click **Add custom field** and select the type of field you want to create: **Checkbox**, **Multi-select**, **Radio button set**, **Single select**, **Text area**, or **Text field**.
4.  Configure the custom field by checking the box next to **Hidden** and/or **Required*. Add a name for the field in the **Field name** box.
5.  Optional: To add additional custom fields, repeat steps 3-4.
6.  Click **Save & close**. The custom field(s) are saved.

### Editing a custom field

1.  In the **Custom fields** pane, click **Edit**.
2.  In the **Edit custom fields** pane, make your changes to the custom field.
3.  Click **Save & close**. The custom field is updated.

### Deleting a custom field

Note: Custom fields can be deleted if they are in use, but any information tied to the fields is also deleted.

1.  In the **Custom fields** pane, click **Edit**.
2.  In the **Edit custom fields** pane, next to the custom fields you want to delete, click the **trash can icon**. Clear out all of the fields to remove the accordion from appearing in user records.
3.  Click **Save & close**.
4.  In the **Delete field data** dialog, click **Save & lose data**.

## Settings \> Users \> Owners
 A Fee/fine owner is the agent or office that manages fines for FOLIO transactions. Fee/fine owners collect fees/fines for FOLIO service points.

Libraries may use owners in different ways, such as creating a fee/fine owner for each service point, or creating a fee/fine owner for each library's accounting office, that may collect fee/fines for multiple service points.

If your library intends to charge any fines, it is important that *every service point* be assigned to a fee/fine owner, even if you do not expect fines to accrue for items associated with that service point. Making sure that the service point is assigned to an owner will prevent unexpected errors from occurring.

When manually creating a fee/fine, Fee/fine owner is a required field.

### Creating a fee/fine owner

1.  In the **Fee/fine: Owners** pane, click **New**.
2.  Enter a name for the **Owner** in the box.
3.  Optional: Enter a **Description** about the owner.
4.  Optional: Select the desired **Associated service points**. Note that while a fee/fine owner does not have to have associated service points, you will not be able to use the fee/fine owner in workflows unless it has service points associated with it.
5.  Click **Save**. The fee/fine owner is saved.

### Editing a fee/fine owner

1.  Find the owner you want to edit and click the **pencil icon** in the **actions** column.
2.  Make your changes to the **Owner, Description,** or **Associated service points**.
3.  Click **Save**. The owner is updated.

### Deleting a fee/fine owner

1.  Find the owner you want to delete and click the **trash can icon** in the **actions** column.
2.  In the **Delete Fee/fine Owner** dialog, click **Delete**. A confirmation message appears and the owner is deleted.

## Settings \> Users \> Manual charges

Use this setting to configure fee/fine types. For example, fee/fine types could be overdue fines, processing fees, or lost item fees.

When manually creating a fee/fine, **Fee/fine Type** is a required field.

### Creating a fee/fine type

1.  In the **Fee/fine: Manual charges** pane, select the **Fee/fine Owner** from the drop-down list.
2.  Optional: Click **Edit** to assign a **Default Charge Notice** and/or **Default Action Notice** to the template and click **Save**.
3.  Click **New**.
4.  Enter a name for the **Fee/Fine Type**.
5.  Optional: Enter the **Default Amount** for the fee/fine.
6.  Optional: Select a **Charge Notice**.
7.  Optional: Select an **Action Notice**.
8.  Click **Save**. The fee/fine type is saved.

### Editing a fee/fine type

1.  Find the fee/fine type you want to edit and click the **pencil icon** in the **actions** column.
2.  Make your changes to the manual charge.
3.  Click **Save**. The manual charge is updated.

### Deleting a fee/fine type

1.  Find the fee/fine type  you want to delete and click the **trash can icon**.
2.  In the **Delete Fee/fine Type** dialog, click **Delete**. A confirmation message appears and the fee/fine type is deleted.

## Settings \> Users \> Waive reasons

Use this setting to configure **Fee/fine: Waive reasons**.
### Creating a waive reason

1.  In the **Fee/fine: Waive reasons** pane, click **New**.
2.  Enter a name for the **Reason** in the box.
3.  Optional: Enter a **Description** about the waive reason.
4.  Click **Save**. The waive reason is saved.

### Editing a waive reason

1.  Find the waive reason you want to edit and click the **pencil icon** in the **actions** column.
2.  Make your changes to the **Reason** or **Description**.
3.  Click **Save**. The waive reason is updated.

### Deleting a waive reason

1.  Find the waive reason you want to edit and click the **trash can icon** in the **actions** column.
2.  In the **Delete Waive reason** dialog, click **Delete**. A confirmation message appears and the waive reason is deleted.

## Settings \> Users \> Payment methods

Use this setting to configure payment methods. Payment methods are fee/fine owner specific. When paying a fee/fine, **Payment method** is a required field.

### Creating a payment method

1.  In the **Fee/fine: Payment methods** pane, select the **Fee/fine Owner** from the drop-down list.
2.  Click **New**.
3.  Enter a **Name** for the payment method.
4.  Select **Yes** or **No** to indicate if **Refund method allowed**.
5.  Click **Save**. The payment method is saved.

### Editing a payment method

1.  Find the payment method you want to edit and click the **pencil icon** in the **actions** column.
2.  Make your changes to the **Name** or **Refund method allowed**.
3.  Click **Save**. The payment method is updated.

### Deleting a payment method

1.  Find the payment method you want to edit and click the **trash can icon**.
2.  In the **Delete Payment method** dialog, click **Delete**. A confirmation message appears and the payment method is deleted.

## Settings \> Users \> Refund reasons

Use this setting to configure refund reasons. When refunding a fee/fine, **Refund reason** is a required field.

### Creating a refund reason

1.  In the **Fee/fine: Refund reasons** pane, click **New**.
2.  Enter a **Name** for the refund reason.
3.  Optional: Enter a **Description** about the refund reason.
4.  Click **Save**. The refund reason is saved.

### Editing a refund reason

1.  Find the refund reason you want to edit and click the **pencil icon** in the **actions** menu.
2.  Make your changes to the **Name** or **Description**.
3.  Click **Save**. The Refund reason is updated.

### Deleting a refund reason

1.  Find the refund reason you want to edit and click the **trash can icon**.
2.  In the **Delete Refund reason** dialog, click **Delete**. A confirmation message appears and the refund reason is deleted.

## Settings \> Users \> Comment required

Use this section to configure whether comments are required when fees/fines are paid, waived, refunded, or transferred. By default, comments are not required.

### Require comment when fee/fine fully/partially paid

To require a comment when a fee/fine is fully or partially paid, under **Require comment when fee/fine fully/partially paid**, select **Yes**. A confirmation message appears and the Require comment setting is saved.

### Require comment when fee/fine fully/partially waived

To require a comment when a fee/fine is fully or partially waived, under **Require comment when fee/fine fully/partially waived**, select **Yes**. A confirmation message appears and the Require comment setting is saved.

### Require comment when fee/fine fully/partially refunded

To require a comment when a fee/fine is fully or partially refunded, under **Require comment when fee/fine fully/partially refunded**, select **Yes**. A confirmation message appears and the Require comment setting is saved.

### Require comment when fee/fine fully/partially transferred

To require a comment when a fee/fine is fully or partially transferred, under **Require comment when fee/fine fully/partially transferred**, select **Yes**. A confirmation message appears and the Require comment setting is saved.

## Settings \> Users \> Transfer accounts

Use this setting to configure available transfer accounts. Transfer accounts are used when your library needs to transfer transactions (for charge or credit) to entities outside of the library. For example, a transfer account may be the bursar's office or a collection agency.

### Creating a transfer account

1.  In the **Fee/fine: Transfer accounts** pane, select the **Fee/fine Owner** from the drop-down list.
2.  Click **New**.
3.  Enter a **Name** for the transfer account.
4.  Optional: Enter a **Description** of the transfer account.
5.  Click **Save**. The transfer account is saved.

### Editing a transfer account

1.  Find the transfer account you want to edit and click the **pencil icon** in the **actions** column.
2.  Make your changes to the **Name** or **Description**.
3.  Click **Save**. The transfer account is updated.

### Deleting a transfer account

1.  Find the transfer account you want to edit and click the **trash can icon** in the **actions** column.
2.  In the **Delete Transfer account** dialog, click **Delete**. A confirmation message appears and the transfer account is deleted.

## Settings \> Users \> Transfer criteria

The **Transfer Criteria** section contains many sections to allow for a wide variety of criteria to be configured. Use this information to configure the criteria for transferring accounts. For more information about transfer accounts, see [Settings \> Users \> Transfer accounts](#settings--users--transfer-accounts).

### Scheduling

The **Scheduling** dropdown allows you to configure the frequency of the transfer process. If you want to run the transfer manually, you can skip this section.

The following options and suboptions are available:
- Never (run manually)
- Hours
     - Hours between runs
- Days
     - Days between runs
     - Run at
- Weeks
     - Weeks between runs
     - Run at
     - Run on weekdays

Example:

To set the schedule to occur twice a week on Monday and Thursday at 12:00am CDT, you would configure the following options:

1.   Set the "Frequency" option to "Weeks".
2.   Set the "Weeks between runs" option to "0".
3.   Set the "Run at" option to "12:00 AM".
4.   Set the "Run on weekdays" to the options "Monday" and "Thursday".

### Criteria

The **Criteria** section allows you to configure the criteria for the transfer process.

The following options are available to configure the criteria:
- No criteria (always run)
     - This option will always run the transfer process when the schedule is met.
- All of
    - This option will run the transfer process when all the criteria is met.
- Any of
    - This option will run the transfer process when any one or more of the criteria are met.
- None of
    - This option will run the transfer process when none of the criteria is met.

The following are options for the criteria:
- Age
- Amount
- Fee/fine owner
- Fee/fine type
- Item location
- Item service point
- Patron group

Example:

To set the criteria to run the transfer process for all fees/fines that are older than 30 days, you would configure the following options:

1.   Set the "Criteria" option to "All of".
2.   Click on the "+" button on the top right corner to add a criteria.
3.   Set the criteria to "Age".
4.   Set the "Comparison operator" to "Greater than but not equal to"
5.   Set the "Number of days old" option to "30".

### Aggregate by patron

The **Aggregate by patron** section is used to enable/disable aggregating data by patron. This is useful if you want to generate a file that aggregate all the data by each patron and list them, so each row would represent data of one patron instead of one fee/fine. If you do not want to aggregate by patron, make sure the **Group by patron** box is unchecked.

Note: If **Group by patron** box is unchecked, then the body format, in between the **Header format** and **Footer format**, will be called **Account data format**. If **Group by patron** box is checked, then the body format will be called **Patron data format**.

If you want to aggregate by patron, check the box and you can configure the aggregate criteria, which include the following options:
- None (include all patrons)
- Number of accounts
- Total amount

For both number of accounts and total amount, you need to set a comparison operator and a number of accounts or total amount. The following comparison operators are available:

- Less than but not equal to
- Less than or equal to
- Greater than but not equal to
- Greater than or equal to

Example:

To set the criteria to run the transfer process for all patrons that have a total amount greater than or equal to $100, you would configure the following options:

1.   Check the "Group by patron" box.
2.   Select the "Filter type" to be "Total amount".
3.   Select the "Comparison operator" to be "Greater than or equal to".
4.   Enter "100" in the "Total amount" box.

### Format sections

The sections **Header format**, **Account data format/Patron data format** and **Footer format** allow you to configure the format of the file that is generated by the transfer process. The format is configured using a series of blocks, in a column based structure. Each block can be configured to contain a fixed value or a variable. The variable will be replaced with the actual value when the file is generated.

You need to configure all data you want to include in the file, including whitespace and delimiters. If you do not want to include a section, you can leave it blank.

The following tokens are available for all sections:
- Newline (LF)
- Newline (Microsoft, CRLF)
- Tab
- Comma
- Whitespace
    - Number of spaces
- Text
     - Text to include
- Current Date
     - Format
          - There are several options for the format of the date(eg. ISO Day, American Date, etc.)
     - Timezone
          - There are several options for the timezone(eg. American/Chicago, etc.)

The following tokens are available in the **Header** and **Footer** sections only:
- Number of Accounts
- Total Amount
     - Has a checkbox to include decimal point checkbox.

The following tokens are available in the **Account data format/Patron data format** section only:
- Account amount
- Account date
- Fee/fine type
- User info
- Item info

For certain tokens, there is a gear icon to configure the format of the value. The following options are available:
- Desired length
     - You can enter an integer for the desired length.
- Fill extra spaces with
     - You can enter a character to fill extra spaces with (eg. 0, " ", etc.).
- Add characters to
     - You can select to add characters to the beginning or end of the value.
- Truncate if too long
     - You can select to truncate the value if it is longer than the desired length.

**Example**:

Here is what an example header structure would look like with variables:

```
$$$LIB{day_of_year}{current_date}Library B&F    YBR{row_count}{fee_fee_total}{year}{quarter}
```

Here is what the header would look like with the variables replaced with actual values and the date is 02/01/2021:

```
$$$LIB3202012023Library B&F    YBR000170000097195020231
```

Note: Some values have been padded with zeros to ensure the correct number of characters. This must be specified in the format and is detailed below.

To configure this header in the transfer criteria, you would add the following elements:

1.   Arbitrary Text
     -  Value: "$$$LIB"
2.   Current date
     - Format: ISO Day
     - Timezone: American/Chicago
3.   Current date
     - Format: American Date
     - Timezone: American/Chicago
4.   Arbitrary Text
     - Value: "Library B&F"
5.   Tab
6.   Text
     - Value: "YBR"
7.   Number of accounts
     - In the Gear settings:
          - Desired length: 5
          - Fill extra spaces with: 0
          - Add characters to: Start
          - Truncate if too long: Checked
8.   Total amount
     - Include the decimal point: Checked
     - In the Gear settings:
          - Desired length: 11
          - Fill extra spaces with: 0
          - Add characters to: Start
          - Truncate if too long: Checked
9.   Current date
     - Format: Year
     - Timezone: American/Chicago
10.  Current date
     - Format: Quarter
     - Timezone: American/Chicago

### Preview

The preview pane displays a preview of the header, account data and footer based on the criteria you have configured. You can use this preview to verify that the criteria you have configured is correct, before saving or running.

There are two checkboxes in the preview pane to configure how the preview is displayed:
- Wrap long lines
- Display invisible characters (newlines, tabs, and spaces)

### Transfer accounts

Here, you can specify where the transfer accounts will be sent. In addition, you can configure any conditional statements regarding the transfer accounts.

To configure the **Transfer to** section, you will need to select options for the two dropdowns:
- Fee/fine owner
     - The fee/fine owner that the transfer accounts will be sent to.
- Transfer account
     - The transfer account that the transfer accounts will be sent to.

Optionally, you can configure multiple conditional statements for the transfer accounts. To configure a conditional statement, you have to click **Add condition**, then in the same way as the [**Criteria**](#criteria) section, you will configure your critera. After that, you can configure the **Transfer to** section for the conditional statement.

### Running the transfer

To run the transfer now without saving, click the "Run manually" button.

To save the criteria and run the transfer on the desired schedule, click the "Save" button.

## Settings \> Users \> Conditions

Automatic patron blocks allow the library to set limits that are automatically enforced. The limits are applied in real time and displayed in the same areas as manual blocks. Patrons can be automatically blocked from checking out, renewing, and/or requesting.

Automatic patron blocks are displayed in the Users app in the Patron blocks section of a user record. Depending on which actions are blocked, the blocks also display in the Check out app after patron barcode entry or patron look-up or if an item barcode is scanned, in the Users app Loans section if you want to renew an item, and in the Requests app after a patron barcode/patron look-up.

The block is automatically removed once the patron falls below the limit.

Note: Conditions and limits have to be in place in order for automated patron blocks to work.

Conditions determine which actions patrons are barred from doing once they hit the limits as outlined for their patron group in [Settings \> Users \> Limits](#settings--users--limits).

These are all the categories for which you can set conditions and limits:

-   Maximum number of items charged out
-   Maximum number of lost items
-   Maximum number of overdue items
-   Maximum number of overdue recalls
-   Maximum outstanding fee/fine balance
-   Recall overdue by maximum number of days

### Configuring patron block conditions

1.  In the **Conditions** pane, select the condition you want to configure.
2.  In the selected condition pane, select the action(s) that occur when the defined limits are exceeded: Block borrowing, Block renewals, and/or Block requests.
3.  Enter a **Message to be displayed** (required)
4.  Click **Save**. A confirmation message appears and the patron block condition is saved.

### Editing patron block conditions

1.  In the **Conditions** pane, select the condition you want to edit.
2.  In the selected condition pane, make your changes to the condition.
3.  Click **Save**. A confirmation message appears and the patron block condition is saved.

### Removing patron block conditions

1.  In the **Conditions** pane, select the condition you want to remove.
2.  In the selected condition pane, clear out any blocks and messages.
3.  Click **Save**. A confirmation message appears and the patron block condition is saved.

## Settings \> Users \> Patron Block Templates

Libraries can choose to create templates for use with patron blocks that staff can apply to user records. This allows libraries to have more consistent patron messaging, and can improve reporting.

Patron block templates are created in **Settings \> Users \> Templates**.

### Create patron block template
1. In the **Patron block templates** pane, select **New** in the top right corner. A **New patron block template** window will open.
2. Enter a **Template name**.
3. Enter a **Block code** (optional). Block codes can be used for reporting or integration purposes. They do not appear in the Users app.
4. Enter a **Description** (optional). This description will only appear when viewing the template in settings.
5. Enter a **Display description** (optional). This appears to staff when applying the block to a particular patron record.
6. Enter a **Message to Patron** (optional). This appears to staff when applying the block to a particular patron record, and can be accessed by discovery layer tools to display to a patron when viewing their library account online.
7. Check the boxes for the appropriate **Block actions** - borrowing, renewals, or requests (optional).
8. Click **Save & close**. The patron block template is saved.

### Edit patron block template.
1. In the **Patron block templates** pane, select the template you wish to edit. It will open for viewing in a fourth pane.
2. Click **Edit** to open the template in edit mode.
3. Make changes as desired.
4. Click **Save & close** to apply changes.

### Delete patron block template
1. In the **Patron block templates** pane, select the template you wish to edit. It will open for viewing in a fourth pane.
2. Click **Edit** to open the template in edit mode.
3. Click **Delete** in the top right.
4. Click **Delete** in the confirmation pop-up.

## Settings \> Users \> Limits

Limits determine the maximum number of materials, recalls, fee/fines, or overdues, that when reached, the conditions you configured in [Settings \> Users \> Conditions](#settings--users--conditions) are applied to a patron's account. Limits are established based on patron groups. See [Settings \> Users \> Patron Groups](#settings--users--patron-groups) for more information about setting up patron groups.

### Create patron block limits

1.  In the **Limits** pane, select the patron group for which you want to configure limits.
2.  In the selected patron group pane, enter a limit for each category. Leave the field blank if you do not want to set a limit for a certain category.
3.  Click **Save**. A confirmation message appears and the block limits are saved.

### Edit patron block limits

1.  In the **Limits** pane, select the patron group with the limits you want to edit.
2.  In the selected patron group pane, make your changes to the limits.
3.  Click **Save**. A confirmation message appears and the block limits are saved.

### Remove patron block limits

1.  In the **Limits** pane, select the patron group with the limits you want to remove.
2.  In the selected patron group pane, set the limit value(s) to zero to clear out the limit(s).
3. Click **Save**. A confirmation message appears and the block limits are saved.
