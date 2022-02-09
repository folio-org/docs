
---
title: "Organizations"
linkTitle: "Organizations"
date: 2021-05-10
weight: 40
tags: ["parenttopic"]
---

The Organizations app allows you to manage organizations with which your library interacts. Organization records are a place where you can store information about an organization, including contact information, websites, interfaces, and accounts. The organizations you create are shared with the acquisitions and electronic resources management areas of FOLIO in the following apps: Orders, Invoices, Receiving, Agreements, Licenses, and eUsage.

Definition of terms related to the Organizations app:



*   **Acquisition units.** An additional layer you can add to acquisitions records that restricts a user’s ability to interact with those records unless they have been assigned to that unit. For example, you may create acquisition units to represent the different libraries within your library system. Units are defined and determined by your library in the Settings app. See [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}) for more information.
*   **Organization.** Any institution with whom your library interacts (this may or may not be an institution from whom you purchase materials).
*   **Vendor.** Any institution from whom your library purchases materials.


## Permissions

The permissions listed below allow you to interact with the Organizations app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Organizations app or any related information.

The following are all the Organizations permissions:



*   **Organizations: Assign acquisitions units to new organization.** This permission allows the user to assign acquisition units to the organization when creating a new record
*   **Organizations: Interface usernames and passwords: view.** This permission allows the user to view the usernames and passwords that appear in the Interface section.
*   **Organizations: Interface usernames and passwords: view, edit, create, delete.** This permission allows the user to create, edit, and delete the usernames and passwords that appear in the Interface section. Note: This permission must always have the Organizations: View, edit, create or Organizations: View, edit, delete permissions assigned along with it.
*   **Organizations: Manage acquisition units.** This permission allows the user to change the assignment of acquisition units for the organization when editing a record.
*   **Organizations: View.** This permission allows the user to search and view organization records and settings. The user can also access Contacts and Interfaces but cannot access Interface usernames and passwords.
*   **Organizations: View, edit.** This permission allows the user to edit and view organizations. The user can also access Contacts and view organization settings, but they cannot access Interface usernames and passwords.
*   **Organizations: View, edit, create.** This permission allows the user to create, edit, and view organizations. The user can also access Contacts and view organization settings, but they cannot access Interface usernames and passwords.
*   **Organizations: View, edit, delete.** This permission allows the user to view, edit, and delete organizations. The user can also access Contacts and view organization settings, but they cannot access Interface usernames and passwords.


## Creating an organization

When creating an organization, you either create it as a general organization or specifically as a vendor. If you create the organization as a vendor, you can add additional vendor-related information. For more information on creating a vendor, see [Creating a vendor](#creating-a-vendor).

1. In the **Organizations** pane, click **New**.

2. In the **Create organization** window, fill in the Summary, Contact information, Contact people, and Interface sections. For more information on the fields and actions available in these sections, see the section descriptions below.

3. Once you have included all of the information you want about the organization, click **Save & close**. The organization is saved and added to the Organizations pane.


### Summary



*   **Name (required).** The name of the organization.
*   **Code (required).** A unique identifier for the organization. Note: You cannot have duplicate vendor codes. The codes for each organization must be different.
*   **Accounting code.** The accounting code used by your library in your payment system in reference to the organization.
*   **Organization status (required).** Select an organization status: Active, Inactive, or Pending. The status you select here is evaluated by the Orders and Invoices apps. Orders can only be opened and invoices can only be paid if the organization is a vendor with an Active status. You may want to use the Pending status to signify that the organization record is a draft.
*   **Default language.** Select the organization’s default language.
*   **Vendor.** If you are creating a vendor organization, select the **Vendor** checkbox . See [Creating a vendor](#creating-a-vendor) for more information.
*   **Acquisition unit.** Select the Acquisition units you want to apply to the organization record, if using. See [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}) for more information.
*   **Description**. Enter a description of the organization.
*   **Alternative names.** Alternative names used by the organization, such as abbreviations or prior names.


#### Adding an alternative name

Note: Adding an alternative name is optional, but if you click **Add alternative names**, you must enter an **Alias** or [delete the alternative name](#deleting-an-alternative-name) in order to save the organization record.

1. Click **Add alternative names**.

2. Enter the organization’s **Alias** in the box.

3. Optional: Enter a **Description** about the alias in the box.

4. Repeat as needed. The alternative name saves once you save the organization.


#### Deleting an alternative name

1. Find the Alternative name you want to delete.

2. Click the **trash can icon**. The alternative name is deleted and is removed from the record once you save the organization.


### Contact information

The Contact information section stores organizational contact information that is not specific to individual people at the organization. You can add contact information for specific individuals in the [Contact people](#contact-people) section, which is described below.

Categories for contact information are configured in the Settings app. If you assign a category to any type of contact information you enter in this section, the contact information is then sorted by that category when you view the organization.



*   **Address.** The addresses associated with the organization. You can add multiple addresses. 
*   **Phone numbers.** The phone numbers associated with the organization. You can add multiple phone numbers.
*   **Email address**. The email addresses associated with the organization. You can add multiple email addresses.
*   **URLs.** The URLs associated with the organization. You can add multiple websites or FTP connections.


#### Adding an address

1. Click **Add address**.

2. Fill in the address information.

3. Repeat as needed. The address saves once you save the organization. Note: If you are adding multiple addresses, select the **Use as primary address** checkbox at the top of the organization’s primary address.


#### Deleting an address

1. Find the address you want to delete.

2. Click the **trash can icon**. The address is deleted and is removed from the record once you save the organization.


#### Adding a phone number

1. Click **Add phone number**.

2. Enter the Phone number in the box.

3. Optional: Select the **Type** of number it is from the drop-down list: Office, Mobile, Fax, or Other.

4. Optional: Select the **Language** spoken at that number from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the email address.

6. Repeat steps 1-5 as needed. The phone number saves once you save the organization. Note: If you are adding multiple numbers, select the **Use as primary phone** checkbox at the top of the organization’s primary number.


#### Deleting a phone number

1. Find the phone number you want to delete.

2. Click the **trash can icon**. The phone number is removed and is deleted once you save the organization.


#### Adding an email address

1. Click **Add email**.

2. Enter the **Email address** in the box.

3. Optional: Enter a **Description** of the email in the box.

4. Optional: Select a **Language** from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the email address.

6. Repeat steps 1-5 as needed.The email address saves once you save the organization. Note: If you are adding multiple email addresses, select the **Use as primary email** checkbox at the top of the organization’s primary email address.


#### Deleting an email address

1. Find the email address you want to delete.

2. Click the **trash can icon**. The email address is removed and is deleted once you save the organization.


#### Adding a URL

The URL can be a website or FTP link.

1. Click **Add URL**.

2. Enter the **URL** in the box.

3. Optional: Enter a **Description** of the URL in the box.

4. Optional: Select a **Language** from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the URL.

6. Repeat steps 1-5 as needed. The URL saves once you save the organization. Note: If you are adding multiple URLs, select the **Use as primary URL** checkbox at the top of the organization’s primary URL.


#### Deleting a URL

1. Find the URL you want to delete.

2. Click the **trash can icon**. The URL is removed and is deleted once you save the organization.


### Contact people


#### Creating a new contact

If you need to create a new contact, see [Creating a contact person](#creating-a-contact-person).


#### Adding an existing contact 

1. Click **Add contact**.

2. In the **Add contacts** dialog, search for the contact you want to add.

3. In the **Search results**, select the **checkbox** next to the contact(s) you want to add. You can add multiple contacts at a time.

4. Click **Save**. The contact(s) appear under the Contact people section. 


#### Deleting a contact

1. Find the contact you want to delete.

2. Click the **x**. The contact is deleted and is removed from the record once you save the organization.


### Interface

An interface is a website, software, or portal that you use to manage orders or gather statistics from the organization.


#### Creating a new interface

For more information, see Creating an interface.


#### Adding an existing interface

1. Click **Add interface**.

2. In the **Add interfaces** dialog, search for the interface you want to add.

3. In the **Search results**, select the checkbox next to the interface(s) you want to add. You can add multiple interfaces at a time.

4. Click **Save**. The interface(s) appear under the Interface section.


#### Removing an interface from the organization record

1. Find the interface you want to delete.

2. Click the **x**. The interface is deleted and is removed from the record once you save the organization.


## Creating a vendor

1. In the **Organizations** pane, click **New**.

2. In the **Create organization** window, in the **Summary** section, select the **Vendor** checkbox. Vendor sections appear.

3. Continue filling in the Summary section. Fill in the Contact information, Contact people, Interface, Vendor information, Vendor terms, EDI information, and Accounts sections. For more information on the fields and actions available in these sections, see the section descriptions below.

3. Once you have included all of the information you want about the vendor, click **Save & close**. The vendor is saved and added to the Organizations pane.


### Summary

For more information, see [Summary](#summary).


### Contact information

For more information, see [Contact information](#contact-information).


### Contact people

For more information, see [Contact people](#contact-people).


### Interface

For more information, see [Interface](#interface).


### Vendor information

The information that you enter under Vendor information sets some of the defaults that appear when you apply the vendor to an order or invoice.



*   **Payment method.** The payment method that you want to appear as the default payment method for the vendor on an invoice. See [Invoices > Extended information]({{< ref "/invoices.md#extended-information" >}}) for more information.
*   **Vendor currencies.** The currencies accepted by the vendor.
*   **Expected activation interval.** The standard activation period for the vendor, in days. Note: The interval you enter here is used in the Activation due field in the E-resources details section of an order line associated with the vendor. For example, if you set the interval to 365, the Activation due field is populated with the date that falls one year from the date the order line is created.
*   **Expected invoice interval.** The standard invoice interval for the vendor, in days. Currently, this information does not display on invoices.
*   **Claiming interval.** The standard claim period for the vendor, in days.
*   **Expected receipt interval.** The standard period during which ordered items are received from the vendor, in days.
*   **Discount percent.** The discount negotiated with the vendor, as a percent value. When creating an order line for an order with the vendor, this value appears as the default in the discount field.
*   **Renewal activation interval.** The standard renewal activation period for this vendor, in days.
*   **Subscription interval.** The standard subscription period for the vendor, in days.
*   **Export to accounting.** To indicate that invoices for the vendor should create voucher records for export to an external accounts payable system, select the **Export to accounting** checkbox. When creating an invoice for the vendor, the value on the Organization record sets the default value for the invoice Export to accounting field.


### Tax

The information that you enter under Tax sets the defaults that appear when you apply the vendor to an order.



*   **Tax ID.** The Federal Tax Identification Number for the vendor. This is also known as an Employer Identification Number (EIN) and is used to identify a business entity.
*   **Tax percentage.** The standard tax rate for the vendor. For vendors liable for a value added tax (VAT), the percentage value can be stored here for reference.
*   **Liable for VAT.** To indicate that the vendor is liable for value-added tax (VAT), select the **Liable for VAT** checkbox.


### Vendor terms

Vendor terms are the summary of an agreement with the vendor. The agreements may be acquisitions/fulfillment-related or e-resource-related. The values entered here do not appear on orders or invoice records.

Note: Adding vendor terms is optional, but if you click **Add**, you must add a **Name** or delete the vendor term in order to save the organization record.


#### Adding a vendor term

1. Click **Add**.

2. Enter the **Name** of the term in the box.

3. Optional: Enter or select the **Discount %** in the box.

4. Optional: Enter a **Reference URL** in the box.

5. Optional: Enter any **Notes** about the agreement in the box.

6. Repeat steps 1-5 as needed. Terms are saved once you save the vendor.


#### Deleting a vendor term

1. Find the vendor term you want to delete.

2. Select the **trash can icon**. The term is removed and is deleted once you save the vendor.


### EDI information

EDI (electronic data interchange) information is the information you use when sending or receiving orders or receiving invoices. Note: FOLIO and EDI functionality is currently under development and any information you enter in this section is for reference purposes only.


#### EDI basic



*   **Vendor EDI code.** The vendor identifier for EDI transactions
*   **Vendor EDI type.** Select one of the Vendor EDI types, which designates the type of identifier used as the vendor identifier: 014/EAN, 31B/US-SAN, 091/Vendor-assigned, or 092/Customer-assigned.
*   **Library EDI code.** The library identifier for EDI transactions
*   **Library EDI type.** Select one of the Library EDI types, which designates the type of identifier used as the library identifier: 014/EAN, 31B/US-SAN, 091/Vendor-assigned, or 092/Customer-assigned.
*   **Prorate tax.** If the tax is prorated on orders or invoices, select the **Prorate tax** checkbox. This indicates that the library expects to prorate summary tax on invoices from the vendor across all invoice lines as a percentage by value.
*   **Prorate fees.** If fees are prorated on orders or invoices, select the **Prorate fees** checkbox. This indicates that the library expects to prorate fees on invoices from the vendor across all invoice lines as a percentage by value.
*   **EDI naming convention.** The naming convention that sets the expected structure to be used for outgoing FOLIO EDI files, such as the prefix or file extension. Example: .edu
*   **Send account number.** If you send your account number with orders or invoices, select the **Send account number** checkbox. If selected, the account number will be required for the PO/POL and output in the EDI order file.
*   **What messages are expected for this vendor?** If your library expects to send EDI orders to the vendor, select the **Orders** checkbox. If your library expects to receive EDI invoices from the vendor, select the **Invoices** checkbox.
*   **Notes.** Enter any notes about the EDI information for this vendor.


#### FTP details



*   **EDI FTP.** Select FTP format in which the library expects to transact with the vendor: SFTP or FTP.
*   **FTP mode.** Select the transmission mode the library expects to use with the vendor: ASCII or Binary.
*   **Server address.** The address for the vendor’s FTP server.
*   **FTP connection mode.** Select the connection mode: Active or Passive.
*   **Username.** The username for the FTP, if a login username is required for this vendor.
*   **Password.** The password for the FTP, if a login password is required for this vendor. The password is automatically hidden. Click **Show** to display the password. Click **Hide** to stop displaying the password.
*   **FTP port.** The FTP port number.
*   **Order directory.** The subdirectory where orders should be placed, if different from the main FTP directory for this vendor. Ex: /directory.
*   **Invoice directory.** The subdirectory where invoices should be retrieved, if different from the main FTP directory for this vendor. Ex: /directory.
*   **Notes.** Any notes about the FTP details for this vendor.


#### Scheduling



*   **Schedule EDI.** If you want to schedule the EDI, select the **Schedule EDI** checkbox.
*   **Date.** Select the date you want to begin the scheduled EDI.
*   **Time.** Select the time for the scheduled EDI.
*   **Weekly.** Select the days on which the EDI will run.
*   **Send to emails.** A comma-separated list of emails to which vendor EDI notifications will be sent. Ex: [jane.doe@example.edu](mailto:jane.doe@example.edu), library.staff@example.edu
*   **Notify all EDI.** If you want to notify the email addresses about any kind of EDI transaction, select the **Notify all EDI** checkbox.
*   **Notify invoice only**. If you want to notify the email addresses about invoices only, select the **Notify invoice only** checkbox.
*   **Notify error only.** If you want to notify the email addresses only if an EDI error occurs, select the **Notify error only** checkbox.
*   **Check now.** To verify the EDI connection, click **Check now**. Note: This feature is currently in development.
*   **Notes.** Enter any notes about the EDI schedule.


### Accounts

Accounts are the accounts you have with a vendor that you use for ordering materials.

Note: Adding an account is optional, but if you click **Add**, you must fill in the required fields or delete the account in order to save the organization record.


#### Adding an account

1. Click **Add**.

2. Enter the account **Name** in the box.

3. Enter the **Account number** in the box. This number is usually assigned by the vendor. Note: The account number entered here appears as a default value on any orders or invoices for the vendor. If you have multiple accounts set up in this section, the first account number displays as the default on orders and invoices, but you can select the appropriate number from a drop-down list that contains all the account numbers associated with the vendor.

4. Optional: Enter a **Description** of the account in the box.

5. Optional: Enter the **Accounting code** in the box.

6. Select the **Payment method** from the drop-down list.

7. Select the **Account status** from the drop-down list.

8. Optional: Enter **Contact** info in the box.

9. Enter the **Library code** in the box. This is the library-supplied code for the account with the vendor.

10. Enter the **Library EDI code** in the box.

11. Optional: Enter any **Notes** about the account in the box.

12. Optional: Select any **Acquisition units** from the drop-down list. For more information on acquisition units, see [Settings > Acquisition]({{< ref "/settings_acquisition_units.md" >}}) units.

13. Repeat steps 1-13 as needed. Accounts are saved once you save the vendor.


#### Deleting an account

1. Find the account you want to delete.

2. Click the **trash can icon**. The account is removed and is deleted once you save the vendor.


## Searching for an organization

You can search for organizations in the **Search & filter** pane. To search for an organization, enter your search terms into the box. Select the **All** drop-down list to search through one of the following fields: 



*   **All.** All fields. This is the default search.
*   **Name.** The name of the organization. 
*   **Code.** A unique identifier for the organization.
*   **Language.** The default language of the organization.
*   **Alias.** Alternative names used by the organization, such as abbreviations or prior names.
*   **Accounting code.** The accounting code used by your library in your payment system in reference to the organization.
*   **Tax ID.** Your library’s tax ID?

You can also search for organizations by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Organization status

To filter organizations by their status, select one of the following:



*   **Active.** Organizations currently used by your library.
*   **Inactive.** Organizations previously used by your library.
*   **Pending.** Organizations that are not yet available for use. Pending could indicate that the organization record is not yet complete.


### Tags

To search for organizations assigned with specific tags, follow these steps:

1. In the **Search & filter** pane, click **Tags**.

2. Select the tag(s) from the drop-down list. Your results appear in the Organizations pane.


### Is vendor

To filter organizations by whether or not they are a vendor, select one of the following:



*   **Yes.** Organizations that are vendors (have the Vendor checkbox selected).
*   **No.** Organizations that are not vendors.


### Country

To search for organizations with offices in a specific country, follow these steps:

1. In the **Search & filter** pane, click **Country**.

2. Select the country from the drop-down list. Your search results appear in the Organizations pane.


### Languages

To search for organizations that communicate in a specific language, follow these steps:

1. In the **Search & filter** pane, click **Languages**.

2. Select the language from the drop-down list. Your search results appear in the Organizations pane.


### Payment method

To filter organizations by their default payment method, as indicated in the [Vendor information](#vendor-information) section of a vendor record, select one of the following options:



*   **Cash.** Default payment method of cash.
*   **Credit card.** Default payment method of credit card.
*   **EFT.** Default payment method of electronic funds transfer.
*   **Deposit account.** Default payment method of deposit account.
*   **Physical check.** Default payment method of physical check.
*   **Bank draft.** Default payment method of bank draft.
*   **Internal transfer.** Default payment method of internal transfer.
*   **Other.** Default payment method of other.


### Acquisitions unit

To search for organizations to which one or more acquisitions units have been assigned, follow these steps:

1. In the **Search & filter** pane, click **Acquisitions unit**.

2. Select the acquisitions unit from the drop-down list. The search results appear in the Organizations pane.


## Viewing organization details

Once you search for an organization, the following information appears in the Organizations pane:



*   **Name.** The name of the organization.
*   **Code.** A unique identifier for the organization.
*   **Description.** A description of the organization.
*   **Organization status.** The status of the organization: Active, Inactive, or Pending.
*   **Vendor.** Whether the organization is a vendor or not.

In the search results, click on an organization to view it. The Organization details pane displays with additional information about the organization.


## Editing an organization

1. [Find the organization you want to edit](#searching-for-an-organization) and select it.

2. In the **Organization details** pane, click **Actions > Edit**.

3. Edit the organization.

4. Click **Save & close**. The organization is saved and updated.


### Changing a vendor to an organization

Note: Changing a vendor to an organization removes all Vendor information, Vendor terms, EDI information, and Accounts from the record.

1. [Find the organization you want to edit](#searching-for-an-organization) and select it.

2. In the **Organization details** pane, clear the **Vendor** checkbox.

3. In the Confirm vendor data deletion dialog, click **Confirm**. The Vendor information, Vendor terms, EDI information, and Accounts sections are removed.

4. Make any additional changes to the organization.

5. Click **Save & close**. The organization is saved and updated.


## Deleting an organization

1. [Find the organization you want to delete](#searching-for-an-organization) and select it.

2. In the **Organization details** pane, click **Actions > Delete**.

3. In the **Delete organization** dialog, click **Delete**. The organization is deleted and a confirmation message appears.


## Adding a tag to an organization

1. [Find the organization you want to tag](#searching-for-an-organization) and select it.

2. In the **Organization details** pane, click the **tag icon**.

3. In the **Tags** pane, either select a tag from the box or enter a tag. 

4. Click the **X** on the **Tags** pane to close the pane and save the tag. The tag number updates to the number of tags applied to the organization.


## Adding a note to an organization

1. [Find the organization to which you want to add a note](#searching-for-an-organization) and select it.

2. In the **Organization details** pane, click **Notes > New**.

3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.

4. Enter a **Note title** in the box.

5. Optional: Enter any **Details** about the note in the box.

6. Click **Save & close**. The note is saved and appears in the Notes section in the Organization details pane.


## Creating a contact person

Note: If you need to create a new contact, you should save your progress on the organization you are creating or wait until you have completed entering all organization information before you start the new contact process. Creating a new contact takes you out of the organization window.

1. Click **Add contact**.

2. In the **Add contacts** dialog, click **New**. If you have not saved your organization information, you are prompted to do so before continuing.

3. In the **Create contact** window, fill in the fields in the Name, Emails, Phone numbers, URLs, and Addresses sections. See below for more information.

4. Click **Save & close**. A confirmation message appears and the contact is saved.


##### Name



*   **Prefix.** Title of the contact.
*   **Last name.** The surname of the contact.
*   **First name.** The given name of the contact.
*   **Status.** Select the status of the contact from the drop-down list: Active or Inactive.
*   **Language.** The primary language spoken by the contact.
*   **Categories.** Select any categories from the drop-down list that describe the contact. Categories are configured in the Settings app. See Settings > Organizations for more information.
*   **Notes.** Any notes related to the contact.


##### Emails


###### Adding an email address

1. Click **Add email**.

2. Enter the **Email address** in the box.

3. Optional: Enter a **Description** of the email in the box.

4. Optional: Select a **Language** from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the email address.

6. Repeat steps 1-5 as needed.The email address saves once you save the contact. Note: If you are adding multiple emails, click **Primary** to indicate the contact’s primary email address.


###### Deleting an email address

1. Find the email address you want to delete.

2. Click the **trash can icon**. The email address is removed and is deleted once you save the contact.


##### Phone numbers


###### Adding a phone number

1. Click **Add phone number**.

2. Enter the **Phone number** in the box.

3. Optional: Select the **Type** of number it is from the drop-down list: Office, Mobile, Fax, or Other.

4. Optional: Select the **Language** spoken at that number from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the email address.

6. Repeat steps 1-5 as needed. The phone number saves once you save the contact. Note: If you are adding multiple phone numbers, click **Primary** to indicate the contact’s primary phone number.


###### Deleting a phone number

1. Find the phone number you want to delete.

2. Click the **trash can icon**. The phone number is removed and is deleted once you save the contact.


##### URLs


###### Adding a URL

The URL can be a website or FTP link.

1. Click **Add URL**.

2. Enter the **URL** in the box.

3. Optional: Enter a **Description** of the URL in the box.

4. Optional: Select a **Language** from the drop-down list.

5. Optional: Select any **Categories** from the drop-down list that describe the URL.

6. Repeat steps 1-5 as needed. The URL saves once you save the contact. Note: If you are adding multiple URLs, click **Primary** to indicate the contact’s primary URL.


###### Deleting a URL

1. Find the URL you want to delete.

2. Click the **trash can icon**. The URL is removed and is deleted once you save the contact.


##### Addresses


###### Adding an address

1. Click **Add address**.

2. Fill in the address information.

3. Repeat steps 1-2 as needed. The address saves once you save the contact. Note: If you are adding multiple addresses, click **Primary** to indicate the contact’s primary address.


###### Deleting an address

1. Find the address you want to delete.

2. Click the **trash can icon**. The address is deleted and is removed from the record once you save the contact.


## Editing a contact person

Note: If you need to edit a contact, you should save your progress on the organization you are creating or wait until you have completed entering all organization information before you start the new contact process. Editing contact takes you out of the organization window.

1. [Add the contact you want to edit to Contact people](#adding-an-existing-contact) if you have not already.

2. Click the contact you want to edit. If you have not saved your organization information, you are prompted to do so before continuing.

3. In the contact window, click **Actions > Edit**.

4. Edit the contact.

5. Click **Save & close**. A confirmation message appears and the contact is updated.


## Copying a contact person

Although it appears in the user interface, copying a contact is not available.


## Unassigning a contact person

See [Deleting a contact](#deleting-a-contact) for an alternate way to remove a contact from an organization.

1. [Add the contact you want to unassign to Contact people](#creating-a-contact-person) if you have not already.

2. Click the contact you want to unassign. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the contact window, click **Actions > Unassign**.

4. In the **Unassign from organization** dialog, click **Confirm**. A confirmation message appears, the contact is removed from the organization, and the organization window appears.


## Deleting a contact person

Deleting a contact person removes that person from your library’s list of contacts. If you only need to remove a contact from an organization record, see [Deleting a contact](#deleting-a-contact-person).

1. [Add the contact you want to delete to Contact people](#creating-a-contact-person) if you have not already.

2. Click the contact you want to delete. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the contact window, click **Actions > Delete**.

4. In the **Delete contact** dialog, click **Confirm**. The contact is deleted and the organization window appears.


## Creating an interface

Note: If you need to create a new interface, you should save your progress on the organization you are creating or wait until you have completed entering all organization information before you start the new interface process. Creating an interface takes you out of the organization window.

1. Click **Add interface**.

2. In the **Add interfaces** dialog, click **New**. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the **Create interface** window, fill in the fields. See below for more information.

4. Click **Save**. A confirmation message appears and the interface is saved.


##### Fields



*   **Type.** The type of interface you are adding: Admin, End user, Reports, Orders, Invoices, or Other.
*   **Name.** The name of the interface.
*   **URI.** The URI of the interface.
*   **Username.** The username needed to log into the interface.
*   **Password.** The password needed to log into the interface. Click **Show** to display the password. Click **Hide** to stop displaying the password.
*   **Notes.** Any notes about the interface.
*   **Available.** Select the **Available** checkbox to indicate whether statistics are available through this interface.
*   **Delivery method.** Select the statistics’ **Delivery method** from the drop-down list: Online, FTP, Email, or Other.
*   **Statistics format.** Select the statistics’ **Statistics format** from the drop-down list: Counter, Delimited, Excel, PDF, ASCII, HTML, or Other.
*   **Locally stored.** The location of the statistics if they are locally stored?
*   **Online location.** The online location of the statistics. For example, a website?
*   **Statistics notes.** Any notes about the statistics.


## Editing an interface

Note: If you need to edit an interface, you should save your progress on the organization you are creating or wait until you have completed entering all organization information before you start the new interface process. Editing an interface takes you out of the organization window.

1. [Add the interface you want to edit to the Interface section](#adding-an-existing-interface) if you have not already.

2. Click the interface you want to edit. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the contact window, click **Actions > Edit**.

4. Edit the interface.

5. Click **Save**. A confirmation message appears and the interface is updated.


## Copying an interface

Although it appears in the user interface, copying an interface is not available.


## Unassigning an interface

See [Deleting an interface](#deleting-an-interface) for an alternate way to remove an interface from an organization.

1. [Add the interface you want to unassign to the Interface section](#adding-an-existing-interface) if you have not already.

2. Click the interface you want to unassign. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the contact window, click **Actions > Unassign**.

4. In the **Unassign from organization** dialog, click **Confirm**. A confirmation message appears, the contact is removed from the organization, and the organization window appears.


## Deleting an interface

Deleting an interface removes it from your library’s list of interfaces. If you only need to remove an interface from an organization record, see Deleting an interface.

1. Add the interface you want to delete to the Interface section if you have not already.

2. Click the interface you want to delete. If you have not saved your organization information, you will be prompted to do so before continuing.

3. In the contact window, click **Actions > Delete**.

4. In the **Delete interface** dialog, click **Confirm**. The contact is deleted and the organization window appears.


