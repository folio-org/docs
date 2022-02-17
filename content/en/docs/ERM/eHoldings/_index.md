---
title: "eHoldings"
linkTitle: "eHoldings"
date: 2022-02-17
weight: 20
tags: ["parenttopic"]
---

The eHoldings app allows you to manage your library’s e-resources. You can link your e-resources to agreements created in the Agreements app to create a relationship between the two.

Definition of terms related to the eHoldings app:



* **E-resource.** An electronic resource. This generally refers to packages and titles.
* **Knowledge base (KB)** A knowledge base is an extensive database maintained by a knowledge base supplier that contains information about electronic resources such as title lists and coverage dates etc. Knowledge bases typically organize the resources provided by a content provider into collections or databases that reflect specific content provider offerings, for example packages of e-journals, e-books, or other materials.
* **Providers.** The provider of the e-resource, for example, the vendor or publisher.
* **Packages.** A collection of e-resource titles bundled together as a unit and distributed by a provider.
* **Titles.** The individual e-resources, for example a journal or ebook, contained within a package.


## Permissions

The permissions listed below allow you to interact with the eHoldings app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the eHoldings app or any related information.

The following are all the eHoldings permissions:



* **eHoldings: Can create and delete custom packages and titles.** This permission allows the user to create and delete custom packages and titles.
* **eHoldings: Can edit providers, packages, titles detail records.** This permission allows the user to edit providers, packages, and titles detail records.
* **eHoldings: Can select/unselect packages and titles to/from your holdings.** This permission allows the user to select (or add) packages and titles to your library’s holdings, and unselect (or remove) them from your holdings.
* **eHoldings: Can view Usage & analysis data for packages, titles and resources.** This permission allows the user to view usage consolidation on the eHoldings app.
* **Settings (eHoldings): Create, edit, and view Usage Consolidation API credentials.** This permission allows the user to update and view usage consolidation settings.
* **Settings (eHoldings): View Usage Consolidation API credentials.** This permission allows the user to view usage consolidation settings.
* **Settings (eHoldings): Can assign/unassign a user from a KB.** This permission allows the user to assign and unassign a user from KB credentials.

Note: This permission should only be used by institutions that maintain multiple EBSCO KB configurations.



## Implementing eHoldings

When you use eHoldings, the data is held in an external knowledge base (KB) and you're interacting with that knowledge base through eHoldings using an API call. eHoldings is connected to an EBSCO knowledge base API called HoldingsIQ to get external KB data. You can make changes in FOLIO eHoldings or EBSCO Holdings Management and they are immediately reflected on the other interface. Currently EBSCO is the only supported external KB.

To setup eHoldings:



1. Subscribe to EBSCO's HoldingsIQ API.
2. [Request an API key](https://developer.ebsco.com/knowledge-services/holdingsiq/reference).
3. Go to FOLIO > Settings > eHoldings to enter API credentials and EBSCO customerID.


## Searching for providers, packages, and titles

To search for the providers, packages, or titles available in your knowledge base, follow these steps:



1. In the **Search & filter** pane, click **Providers**, **Packages**, or **Titles**.
2. Optional: If you are searching Titles, you can click the **Titles** drop-down list to search through one of the following fields:
    * **ISSN/ISBN.** International Standard Serial Number or International Standard Book Number of the title.
    * **Publisher.** Publisher of the title.
    * **Subject.** Subject of the title.
3. Enter your search terms into the box and click **Search**. Your results appear in the Providers, Packages, or Titles pane.

You can also search for providers, packages, or titles by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. The filters available vary depending on whether you are searching for a provider, package, or title. See the sections below for more information on the filters.


### Tags

To search for provider, packages, or titles assigned with specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags**.
2. Select the **Search by tags only** checkbox.
3. Select the tag(s) from the drop-down list. Your results appear in the Providers, Packages, or Titles pane.


### Sort options

Sort options determine the order in which your search results display. By default, Relevance is selected. If you select Provider, Package, or Title, your search results are sorted alphabetically.

To change the sort option:



1. In the **Search & filter** pane, click **Sort options**.
2. Select **Relevance** or **Provider**, **Package**, or **Title**. Results are sorted in the Providers, Packages, or Titles pane based on your selection.


### Selection status

To filter packages or titles by selection status, in the **Search & filter** pane, click **Selection status**, and select one of the following options:



* **All.** All packages or titles, regardless of selection status. This is selected by default.
* **Selected.** Packages or titles selected in your knowledge base.
* **Not selected.** Packages or titles not selected in your knowledge base.
* **Ordered through EBSCO.** Packages or titles your library has acquired through EBSCONET.


### Content type

To filter packages by content type, in the **Search & filter** pane, click **Content type**, and select one of the following options:


* **All.** All packages, regardless of content type. This is selected by default.
* **Aggregated Full Text.** Aggregated full-text databases refer to products sold by companies that do not themselves publish journals but only distribute journal content, for example products sold by EBSCO and ProQuest.

* **Abstract and Index.** Reference sources which provide bibliographic information about journals including abstracts of the articles.
* **E-Book.** Electronic books.
* **E-Journal.** Electronic journals (full text and bibliographic).
* **Print.** Materials in print (or paper) format.
* **Online Reference.** For example, dictionaries, almanacs, and encyclopedias that are available in electronic format.
* **Unknown.** The content type is undefined.


### Publication Type

To filter titles by publication type, in the **Search & filter** pane, click **Publication Type**, and select one of the following options:


* **All.** All titles, regardless of publication type. This is selected by default.
* **Audiobook.** A recording of a reading of a book, frequently on CD.
* **Book.** A written text that can be published in print or electronic format; a monograph.
* **Book Series.** A related set of books.
* **Database.** A structured set of data held in a computer.
* **Journal.** A newspaper or magazine that deals with a particular subject or professional activity.
* **Newsletter.** A printed or electronic document containing information about the recent activities of an organization or group sent regularly to members.
* **Newspaper.** A printed or electronic publication (usually issued daily or weekly) containing news, feature articles, advertisements, and correspondence.
* **Proceedings.** A complete written record of what is said or done during a meeting.
* **Report.** An official document made by someone who has examined a particular subject.
* **Streaming Audio.** Audio data transmitted over a computer network for immediate playback rather than for file download and later offline playback.
* **Streaming Video.** Video data transmitted over a computer network for immediate playback rather than for file download and later offline playback.
* **Thesis & Dissertation.** A long essay on a particular subject written as a requirement for an advanced degree.
* **Website.** A set of related web pages located under a single domain name.
* **Unspecified.** The publication type is undefined.


## Viewing provider, package, and title records

The type of information displayed in your search results depends upon the type of search performed (provider, package, or title). That information can include:



* **Name.** The name of the provider, package, or title.
* **Provider**. The package provider.
* **Selected.** The number of packages your library has selected from the provider.
* **Total packages.** The number of packages available from the provider.
* **Total titles.** The number of titles available from the package.
* **Hidden.** Whether the package is hidden from view.
* **Publication type.** Material type of the title.
* **Title information.** Varies depending on the publication type of the title.

In the search results, click any result to view it. The provider, package, or title records each display additional information about your selection.


### Viewing a provider record

The provider record contains detailed information about the selected provider.



* To view a provider record, [find the provider](#searching-for-providers-packages-and-titles) you want to view and select it. The provider record window appears.


#### Tags

In the tags section of the provider record, you can manage any tags associated with the provider.


##### Adding a tag to a provider record



1. [Find the provider](#searching-for-providers-packages-and-titles) you want to tag and select it.
2. In the **Provider record** window, in the **Tags** section, either select a tag from the box or enter a new tag.
3. Optional: If you are adding a new tag, click **Add tag for: [your tag name]** to create the tag and add it to the record.
4. Click the **X** on the provider record window to close the window and save the tag.


##### Removing a tag from a provider record

Note: Tags can be removed but not entirely deleted.



1. [Find the provider](#searching-for-providers-packages-and-titles) from which you want to remove a tag and select it.
2. In the **Provider record** window, in the **Tags** section, click the **X** next to the tag you want to remove. The tag is removed from the record but still remains as an option in the drop-down list.


#### Provider information

This Provider information section displays the following fields:



* **Packages selected.** Indicates the number of packages selected by your library. You can change the number of selected packages in the [Packages](#creating-a-custom-package) section.
* **Total packages.** Indicates the total number of packages available from the provider.


#### Provider settings

The Provider settings section displays the provider’s proxy settings. Proxy settings can be changed by editing the provider record. See [Editing provider records](#editing-a-provider-record) for more information.


#### Notes

In the Notes section, you can add and manage notes.


##### Adding a new note to a provider



1. [Find the provider](#searching-for-providers-packages-and-titles) to which you want to add a note and select it.
2. In the **Provider record** window, in the **Notes** section, click **New**.
3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
4. Enter a **Note title** in the box.
5. Optional: Enter any **Details** about the note in the box.
6. Click **Save & close**. The note is saved and appears in the Notes section of the provider record.


##### Assigning an existing note to a provider



1. [Find the provider](#searching-for-providers-packages-and-titles) to which you want to assign a note and select it.
2. In the **Provider record** window, in the **Notes** section, click **Assign / Unassign**.
3. In the **Assign / Unassign note** dialog, search for a note using the search bar in the **Search & filter** pane, or select a **Note type** from the drop-down list. You can also filter by **Note assignment status**.
4. Select the **checkbox** next to the note you want to assign to the package and click **Save**. The note is saved and appears in the Notes section of the provider record.


##### Editing a provider note



1. [Find the provider](#searching-for-providers-packages-and-titles) with the note you want to edit and select it.
2. In the **Provider record** window, in the **Notes** section, find the note you want to edit, and click **Edit** at the bottom of the **Title and details** column of the note.
3. In the **Edit: note** window, make your desired changes to the note.
4. Click **Save & close**. The note is saved.


##### Deleting a provider note



1. [Find the provider](#searching-for-providers-packages-and-titles) with the note you want to remove and select it.
2. In the **Provider record** window, in the **Notes** section, click the note you want to remove.
3. In the **Note** window, click **Actions > Delete**.
4. In the **Delete note** dialog, click **Delete**. The note is deleted and removed from any records to which it was attached.


#### Packages

The Packages section includes the total number of packages available from the provider displayed in alphabetical order. Not selected packages are indicated by a gray icon. Selected packages are indicated by a green icon.


#### Filtering packages



1. To filter packages, click the **magnifying glass icon**.
2. Optional: In the **Filter packages** dialog, search for a package title by entering the name or partial name of the package in the box.
3. Optional: Select any filters (Tags, Sort options, Selection Status, or Content type) you want to apply to the packages.
4. Click **Search.** The packages are filtered based on your selections.


### Viewing a package record

The package record contains detailed information about the e-resource package.



* To view a package record, [find the package](#searching-for-providers-packages-and-titles) you want to view and select it. The package record window appears.


#### Tags

In the tags section, you can add and manage tags applied to a package.


##### Adding a tag to a package record



1. [Find the package](#searching-for-providers-packages-and-titles) you want to tag and select it.
2. In the **Package record** window, in the **Tags** section, either select a tag from the box or enter a new tag.
3. Optional: If you are adding a new tag, click **Add tag for: [your tag name]** to create the tag and add it to the record.
4. Click the **X** on the package record window to close the window and save the tag.


##### Removing a tag from a package record

Note: Tags can be removed but not entirely deleted.



1. [Find the package](#searching-for-providers-packages-and-titles) from which you want to remove a tag and select it.
2. In the **Package record** window, in the **Tags** section, click the **X **next to the tag you want to remove. The tag is removed from the record but still remains as an option in the drop-down list.


#### Holding status

Holding status indicates whether the package is part of your library’s holdings.


##### Adding a package to holdings

If a package has not yet been selected by your library, you can add it to your holdings from this section of the package record.

Note: Performing this action adds all the titles in this package to your holdings.



1. Find the package you want to update holdings on and select it.
2. In the **Package record** window, in the **Holding status** section, click **Add package to holdings.**
3. In the **Add all titles in a package to holdings** dialog, click **Add package (all titles) to holdings**. The titles are added to your holdings and the Holding status updates to Selected.


##### Removing a package from holdings



1. [Find the package](#searching-for-providers-packages-and-titles) from which you want to remove holdings and select it.
2. In the **Package record** window, click the **Actions >** **Remove package from holdings.**
3. In the **Remove package from holdings?** dialog, click **Yes, remove**. The titles are removed from your holdings and the Holding status updates to Not selected.


#### Package information

The Package information section contains the following information on the package:



* **Provider.** The package provider.
* **Content type.** Type of material contained in a package.
* **Package type.** Either Complete or Variable, indicating whether the package must be selected in its entirety, or whether individual titles can be chosen from within the package.
* **Titles selected.** The number of titles acquired by your library from within this package.
* **Total titles.** The total number of titles contained within the package.


#### Package settings

The Package settings section includes the options: Show titles in package to patrons, Automatically select new titles, the package’s Proxy setting, and Provider token. These settings can be changed by [editing the package record](#editing-a-package).


#### Coverage settings

Coverage is the available years or version of a publication. For a journal this would be the publication years, volumes, or issues covered by the online resource. For a monograph it can contain publication year, edition, or volume. Coverage can be customized by [editing the package record](#editing-a-package).


#### Agreements

Use the Agreements section to create agreements or link the package to agreements created in the Agreements app.


##### Linking an existing agreement



1. [Find the package](#searching-for-providers-packages-and-titles) to which you want to link an agreement and select it.
2. In the **Package record** window, in the **Agreements** section, click **Add.**
3. In the **Select agreement** dialog, enter the agreement’s name or a portion of the name into the search box in the **Search & filter** pane, and click **Search**. Search results appear in the Agreements pane.
4. Optional: Filter results using the filters in the **Search & filter** pane.
5. Click the agreement to select. The agreement is added to the package record.


##### Creating a new agreement



1. [Find the package](#searching-for-providers-packages-and-titles) to which you want to link an agreement and select it.
2. In the **Package record** window, in the **Agreements** section, click **New.**
3. Fill in the fields. See [Creating an agreement]({{< ref "/agreements.md#creating-an-agreement" >}}) for more information.
4. Click **Save & close.** A confirmation message appears and the agreement is added to the package record.


##### Removing an agreement



1. [Find the package](#searching-for-providers-packages-and-titles) from which you want to remove an agreement and select it.
2. In the **Package record** window, in the **Agreements** section, click the **trash can icon** next to the agreement you want to remove.
3. In the **Unassign an agreement from this record** dialog, click **Unassign**. A confirmation message appears and the agreement is removed from the package record, but not deleted from the Agreements app.


#### Notes

In the Notes section, you can add and manage notes.


##### Adding a new note to a package



1. [Find the package](#searching-for-providers-packages-and-titles) to which you want to add a note and select it.
2. In the **Package record** window, in the **Notes** section, click **New**.
3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
4. Enter a **Note title** in the box.
5. Optional: Enter any **Details** about the note in the box.
6. Click **Save & close**. The note is saved and appears in the Notes section of the package record.


##### Assigning an existing note to a package



1. [Find the package](#searching-for-providers-packages-and-titles) to which you want to assign a note and select it.
2. In the **Package record** window, in the **Notes** section, click **Assign / Unassign**.
3. In the **Assign / Unassign note** dialog, search for a note using the search bar in the **Search & filter** pane, or select a **Note type** from the drop-down list. You can also filter by **Note assignment status**.
4. Select the **checkbox** next to the note you want to assign to the package and click **Save**. The note is saved and appears in the Notes section of the package record.


##### Editing a package note



1. [Find the package](#searching-for-providers-packages-and-titles) with the note you want to edit and select it.
2. In the **Package record** window, in the **Notes** section, find the note you want to edit, and click **Edit** at the bottom of the **Title and details** column of the note.
3. In the **Edit: note** window, make your desired changes to the note.
4. Click **Save & close**. The note is saved


##### Deleting a package note



1. [Find the package](#searching-for-providers-packages-and-titles) with the note you want to remove and select it.
2. In the **Package record** window, in the **Notes** section, click the note you want to remove.
3. In the **Note** window, click **Actions > Delete**.
4. In the **Delete note** dialog, click **Delete**. The note is deleted and removed from any records to which it was attached.


#### Titles

The Titles section includes the total number of titles available in the package displayed in alphabetical order. Not selected titles are indicated by a gray icon. Selected titles are indicated by a green icon.


##### Filtering titles



1. To filter titles, click the **magnifying glass icon**.
2. Optional: In the **Filter titles** dialog, search for a title by entering the name or partial name of the title in the box.
3. Optional: Select any filters (Tags, Sort options, Selection Status, or Publication type) you want to apply to the titles.
4. Click **Search.** The titles are filtered based on your selections.


### Viewing a title

The title record contains detailed information about the selected title.



* To view a title record, [find the title](#searching-for-providers-packages-and-titles) you want to view and select it. The title record window appears.


#### Title information

The Title information section can contain Author, Publisher, Publication type, ISSN (Print), ISSN (Online), ISBN (Print), ISBN (Online), Subjects, Peer reviewed, Title type, and Description.

Title information varies depending on the publication type.


##### Adding a title to a custom package

For information on creating a custom package, see [Creating a custom package](#creating-a-custom-package), below.



1. [Find the title](#searching-for-providers-packages-and-titles) you want to add to a custom package and select it.
2. In the **Title record** window, in the **Title information** section, click **Add to custom package**.
3. In the **Add title to custom package** dialog, select the **Package** to which you want to add the title from the drop-down list.
4. Optional: Enter a **Custom URL** in the box.
5. Click **Submit**. The title package details window appears.


#### Packages

The Packages section includes the packages that contain the title displayed in alphabetical order. Not selected packages are indicated by a gray icon. Selected packages are indicated by a green icon.


##### Filtering packages



1. To filter packages, click the **magnifying glass icon**.
2. In the **Filter packages** dialog, search for a package by entering the name or partial name of the title in the box.
3. Select each package you want to filter by. You can select multiple packages.
4. Click **Search.** The packages are filtered based on your selections.


## Editing a provider record

Only proxy settings can be edited.

Note: If your library is an EBSCO KB API user, access EBSCOAdmin to setup and maintain proxies.



1. [Find the provider](#searching-for-providers-packages-and-titles) you want to edit and select it.
2. In the **Provider details** window, click **Edit.**
3. Select a new **Proxy** from the drop-down list.
4. Click **Save & close**. A confirmation message appears and the provider is updated.


## Creating a custom package



1. In the **Search & filter** pane, click **Packages**.
2. In the **Packages** pane, click **New**.
3. In the **New custom package** window, enter a package **Name**.
4. Optional: Select a **Content type** from the drop-down list.
5. Optional: To provide a date range for Coverage settings, click **Add date range**. Enter a **Start date** and **End date**.
6. Click **Save & close**. A confirmation message appears and the custom package details window appears.


## Editing a package



1. Find the package you want to edit and select it.
2. In the **Package record** window, click **Actions > Edit.**
3. Make your desired changes. See the sections below for more information.
4. Click **Save & close.**


### Editing holding status

Holdings can be added or removed from a package. See [Holding status](#editing-holding-status) for instructions.


### Editing package settings



* **Show titles in a package to patrons.** Indicates whether the titles display in your catalog. If you select **No**, you continue to be subscribed to the titles in eHoldings, but they are hidden from patrons in the catalog.
* **Automatically select new titles.** Whether your service provider will automatically select additional titles as they are added to the package by the provider. If you select **No**, then new titles are not selected if they become available in the package unless manually selected by your library.
* **Proxy.** Settings can be changed using the **Proxy** drop-down list.


### Editing coverage settings

You can customize the package’s coverage dates to match your holdings by setting a new start and/or end date.


## Deleting a custom package



1. [Find the package](#searching-for-providers-packages-and-titles) you want to delete and select it.
2. In the **Package record** window, click **Actions > Delete package.**
3. In the **Delete custom package** dialog, click **Yes, delete**. The package is deleted.


## Adding a title to holdings



1. [Find the title](#searching-for-providers-packages-and-titles) you want to add to your holdings and select it.
2. In the **Title record** window, under the **Packages**, select the package to which you want to add the title.
3. In the **Package title details** window, in the **Holding status** section, click **Add to holdings**. The Holding status changes to Selected.


## Removing a title from holdings



1. [Find the title](#searching-for-providers-packages-and-titles) you want to remove from your holdings.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears that you want to remove from your holdings.
3. In the **Package title details** window, click **Actions > Remove title from holdings.**
4. In the **Remove resource from holdings?** dialog, click **Yes, remove.** The Holding status changes to Not Selected.


## Editing a title record



1. [Find the title](#searching-for-providers-packages-and-titles) you want to edit.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears that you want to edit.
3. In the **Package title details** window, click **Actions > Edit**.
4. Make your desired changes. See the sections below for more information.
5. Click **Save & close.**


### Editing custom labels

Custom labels are created in the Settings app. For more information, see Settings > eHoldings > Custom labels. If you are using custom labels, you can enter information into these fields.


### Editing resource settings

This section includes the options:



* **Show to patrons.** Indicates whether the titles display in your catalog. If you select **No**, you continue to be subscribed to the titles in eHoldings, but they are hidden from patrons in the catalog.
* **Proxy.** Settings can be changed using the **Proxy** drop-down list.


### Editing coverage settings

Coverage is the available years or version of a publication. For a journal this would be the publication years, volumes, or issues covered by the online resource. For a monograph it can contain publication year, edition, or volume.



* **Managed coverage dates.** Indicates the title’s coverage dates are managed by your library’s service provider.
* **Custom coverage dates.** Indicates that coverage dates are managed by your library.  Click **Add date range** and enter a **Start date** and **End date**.
* **Dates.** If selected, the title’s coverage displays as dates in your catalog.
* **Coverage statement.** If selected, the title’s coverage displays as the statement you enter into the box.
* **Embargo period.** A period of time during which the title is not available.


#### Adding a custom embargo period



1. Click **Add custom embargo period**
2. In the first box, enter a **number** greater than 0.
3. Select a **time period** from the drop-down list. The embargo period saves when you save and close the record.


#### Deleting a custom embargo period



1. Find the embargo period you want to remove.
2. Click the **trash can icon** next to the embargo period. The embargo period is removed and is deleted when you save the record.


## Adding a tag to a title record

Tags can only be added to title records when a package is selected and the title record is not open for editing.



1. [Find the title](#searching-for-providers-packages-and-titles) you want to tag and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears that you want to tag.
3. In the **Package title details** window, in the **Tags** section, either select a tag from the box or enter a new tag.
4. Optional: If you are adding a new tag, click **Add tag for: [your tag name]** to create the tag and add it to the record.
5. Click the **X** on the provider details window to close the window and save the tag.


## Removing a tag from a title record

Note: Tags can be removed but not entirely deleted.



1. [Find the title](#searching-for-providers-packages-and-titles) you want to tag and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears that you want to tag.
3. In the **Package title details** window, in the **Tags** section, click the **X** next to the tag you want to remove. The tag is removed from the record but still remains as an option in the drop-down list.


## Creating a custom title



1. In the **Search & filter** pane, click **Titles**.
2. In the **Titles** pane, click **New**.
3. In the **New custom title** window, enter a title **Name**.
4. Optional: To add a contributor, follow these steps:
    1. Click **Add a contributor**.
    2. Select **Author**, **Editor**, or **Illustrator** from the **Type** drop-down list.
    3. Enter the **Name** of the contributor in the box.
    4. Repeat as needed.
5. Optional: Enter an **Edition** in the box.
6. Optional: Enter a **Publisher** in the box.
7. Optional: Select a **Publication type** from the drop-down list.
8. Optional: To add an identifier, follow these steps:
    1. Click **Add identifier**.
    2. Select **ISSN** or **ISBN**, **Print** or **Online,** from the **Type** drop-down list.
    3. Enter the **ID** of the identifying number in the box.
    4. Repeat as needed.
9. Optional: To indicate whether the title is peer reviewed, select the **Peer reviewed** checkbox.
10. Select a **Package** from the drop-down list to which to add the title.
11. Click **Save & close.** The custom title record appears.


## Editing a custom title



1. [Find the custom title](#searching-for-providers-packages-and-titles) you want to edit and select it.
2. In the **Custom title** window, click **Edit**.
3. Make your desired changes. See [Creating a custom title](#creating-a-custom-title) for information on the fields.
4. Click **Save & close.**


## Deleting a custom title



1. [Find the custom title](#searching-for-providers-packages-and-titles) you want to delete and select it.
2. In the **Custom title** window, in the **Packages** section, select the package containing the title.
3. Click **Actions > Remove title from holdings.**
4. In the **Remove resource from holdings** dialog, click **Yes, remove**. The custom title is deleted.


## Linking an existing agreement to a title record

Note: Agreements can only be added to title records when a package is selected and the title record is not open for editing.



1. [Find the title](#searching-for-providers-packages-and-titles) to which you want to link an agreement and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears to which you want to add an agreement.
3. In the **Package title details** window, in the **Agreements** section, click **Add**.
4. In the **Select agreement** dialog, enter the agreement’s name or a portion of the name into the search box in the **Search & filter** pane, and click **Search**. Search results appear in the Agreements pane.
5. Optional: Filter results using the filters in the **Search & filter** pane.
6. Click the agreement to select. The agreement is added to the title record.


## Creating a new agreement from a title record



1. Repeat steps 1-2 from [Linking an existing agreement](#linking-an-existing-agreement-to-a-title-record).
2. In the **Package title details** window, in the **Agreements** section, click **New**.
3. Fill in the fields. See [Creating an agreement]({{< ref "/agreements.md#creating-an-agreement" >}}) for more information.
4. Click **Save & close.** A confirmation message appears and the agreement is added to the title record.


## Removing an agreement



1. Repeat steps 1-2 from [Linking an existing agreement](#linking-an-existing-agreement-to-a-title-record).
2. In the **Package title details** window, in the **Agreements** section, click the **trash can icon** next to the agreement you want to remove.
3. In the **Unassign an agreement from this record** dialog, click **Unassign**. A confirmation message appears and the agreement is removed from the package record, but not deleted from the Agreements app.


## Adding a new note to a title



1. [Find the title](#searching-for-providers-packages-and-titles) to which you want to add a note and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title.
3. In the **Package title details** window, in the **Notes** section, click **New**.
4. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
5. Enter a **Note title** in the box.
6. Optional: Enter any **Details** about the note in the box.
7. Click Save & close. The note is saved and appears in the Notes section of the title record.


## Assigning an existing note to a title



1. [Find the title](#searching-for-providers-packages-and-titles) to which you want to assign a note and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears.
3. In the **Package title details** window, in the **Notes** section, click **Assign / Unassign**.
4. In the **Assign / Unassign note** dialog, search for a note using the search bar in the **Search & filter** pane, or select a **Note type** from the drop-down list. You can also filter by **Note assignment status**.
5. Select the **checkbox** next to the note you want to assign to the package and click **Save**. The note is saved and appears in the Notes section of the title record.


## Editing a title note



1. [Find the title](#searching-for-providers-packages-and-titles) with the note you want to edit and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears.
3. In the **Package title details** window, in the **Notes** section, find the note you want to edit, and click **Edit** at the bottom of the **Title and details** column of the note.
4. In the **Edit: note** window, make your desired changes to the note.
5. Click **Save & close**. The note is saved.


## Deleting a title note



1. [Find the title](#searching-for-providers-packages-and-titles) with the note you want to delete and select it.
2. In the **Title record** window, in the **Packages** section, select the package within which the title appears.
3. In the **Note** window, click **Actions > Delete**.
4. In the **Delete note** dialog, click **Delete**. The note is deleted and removed from any records to which it was attached.


## eHoldings keyboard shortcuts

Keyboard shortcuts allow you to perform actions using the keyboard. There are two options for displaying keyboard shortcuts available for the eHoldings app.

The first option:

1. Click the downward-facing carrot, “v”, at the end of the app name.  
2. Click **Keyboard shortcuts** to view the list of shortcut actions.

The second option:

1. Press <kbd>Ctrl+Alt+K</kbd> (Windows) or <kbd>Cmd+Alt+K</kbd> (Mac).
2. Dialog displays showing a list of the valid keyboard shortcuts for the eHoldings app, including the shortcuts for the following actions:



*  Create a new custom package or title record: Ensure cursor is not in the search text box and press <kbd>Alt+N</kbd>
*  Edit a record: Press <kbd>Ctrl+Alt+E</kbd> (Windows) or <kbd>Cmd+Alt+E</kbd> (Mac)
*  Save a record: Press <kbd>Ctrl+S</kbd> (Windows) or <kbd>Cmd+S</kbd> (Mac)
*  Expand all accordions: Press <kbd>Ctrl+Alt+B</kbd> (Windows) or <kbd>Cmd+Alt+B</kbd> (Mac)
*  Collapse all accordions: Press <kbd>Ctrl+Alt+G</kbd> (Windows) or <kbd>Cmd+Alt+G" (Mac)
*  Go to the **Search & filter** pane: Press <kbd>Ctrl+Alt+H</kbd> (Windows) or <kbd>Cmd+Alt+H</kbd> (Mac)
*  Open keyboard shortcuts modal: Press <kbd>Ctrl+Alt+K</kbd> (windows) or <kbd>Cmd+Alt+K</kbd> (Mac)
*  Expand or collapse an accordion: Press the Spacebar
*  Close a modal or pop-up: Press the <kbd>Esc</kbd> key
*  Copy: Press <kbd>Ctrl+c</kbd>
*  Cut: Press <kbd>Ctrl+x</kbd>
*  Paste: Press <kbd>Ctrl+v</kbd>
*  Find: Press <kbd>Ctrl+f</kbd>


4. Press the <kbd>Esc</kbd> key to close the dialog box. 
