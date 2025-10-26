---
title: AVsitterPlus
date: 2025-10-21 12:00:05 +0800
layout: page
summary:
tags: AVsitterPlus
toc: true
permalink: avsitterplus_home.html
---

## What is AVsitterPlus

`AVsitterPlus` is a fork of the `AVsitter` project. `AVsitter` has not been updated in many years, the last release was in March of 2018, and the last commit to the `AVsitter` repository was in 2021. `AVsitterPlus` incorporates all changes to `AVsitter` that have been committed since its last release and integrates several pull requests that have been reviewed but were never merged into `AVsitter`. In addition, `AVsitterPlus` adds several new features and bug fixes.

AVsitterPlus™ is designed as the ultimate in pose systems for Second Life furniture, with powerful and easy to use scripts that allow you to create and sell furniture with perfectly positioned poses. Easily create everything from simple single animation chairs to feature rich couples furniture - without poseballs! AVsitterPlus is ideal for mesh and sculpties as well as "traditional" prim furniture.

### AVsitterPlus Features

- Unique furniture pose system goes beyond what any other can do in Second Life.
- Suitable for all types of furniture and vehicles too.
- Visually set up your poses with the SL building tools.
- Set up sits for many avatars, each with their own animation menu.
- Supports 300 poses per avatar, controlled via menu.
- Easily set up couples and group poses with position "swap" ability.
- Allows submenus of any depth, and addition of custom buttons.
- Comprehensive instructions, videos and examples included.
- Optional security to restrict menu access to ALL/GROUP/OWNER
- API allows for animation sequences, custom scripting, and much more.
- Pose memory stores personal adjustments saved by avatars.
- Instant ready - no need for customers to wait for the script to load when rezzed.

## How to get AVsitterPlus

AVsitterPlus can be freely obtained from GitHub and imported into Second Life by following our <a href='https://github.com/AVsitterPlus/AVsitterPlus/blob/master/AVsitterPlus/IMPORT_GUIDE.md'>import guide</a>.

{% include tip.html content="If you would prefer a packaged version of the latest release, and to receive in-world updates of future releases, visit the <a href='https://marketplace.secondlife.com/stores/44210'>SL Marketplace</a>. Proceeds from marketplace sales are shared with open-source contributors and help support continued development." %}

## Inside the AVsitterPlus Package

The main AVsitterPlus package contains:

-  <b>AVP_sitA & AVP_sitB scripts</b>

   The main scripts that must always be used in a pair (A+B), one pair for each avatar to sit. Each pair will define a SITTER.

-  <b>AVP_adjuster script & AVP_helper object</b>

   These are setup items that allow the default pose positions to be adjusted.

-  <b>AVP_Positions notecard</b>

   AVsitterPlus data needs to be saved in an AVP_Positions notecard. The notecard provided is intentionally empty.

-  <b>Utilities [BOX]</b>

   The Utilities [BOX] contains the <a href="/avsitterplus_utilities.html">Utilities</a>.

-  <b>Plugins [BOX]</b>

   The Plugins [BOX] contains scripts that provide special functionality, along with <a href="/avsitterplus_examples.html">examples</a>. Example items are provided for each script.

{% include note.html content="AVsitterPlus Examples are in development. The AVsitter Examples, available on the <a href='https://marketplace.secondlife.com/stores/79645'>AVsitter SL Marketplace</a>, contains <a href='/avsitterplus_examples.html'>over 40 example items</a> that demonstrate the use of the system. The AVsitter Examples are equally applicable to AVsitterPlus. However, the AVsitter marketplace item is priced at L$2,999." %}

## Requirements

There are some basic requirements to use AVsitterPlus:

<ul>
<li/>You will need to have a beginner's <a href="http://wiki.secondlife.com/wiki/Building_Tools">knowledge of building in Second Life</a>.
<li/>You will need to purchase animation files from <a href="http://bit.ly/HtdEqK">animation stores in SL</a> or <a href="http://wiki.secondlife.com/wiki/How_to_create_animations">learn to create them yourself</a>.</ul>

## Setup

### Basic Prim Setup

The most basic setup is a prim that seats one avatar.

<ol>
<li/>Drop the following into an empty prim in your furniture:

<ul>
<li/>AVP_sitA + AVP_sitB scripts
<li/>AVP_adjuster script
<li/>AVP_helper object
<li/>AVP_Positions notecard
<li/>The animation files you plan to use
</ul>
{% include note.html content="One pair of AVP_sit (A+B) scripts will mean the prim has <i>one</i> SITTER." %}

<li/>Sit on your furniture, and the menu will appear (if you lose the menu just touch your furniture again to get the menu back).

<li/>Choose [ADJUST] then [HELPER] from the menu, and the AVP_helper stick will rez.

<li/>Choose [NEW] from the menu, then choose [POSE] to create a singles pose.

<li/>After creating a pose, adjust its position by moving the helper stick with the SL building tools until your avatar is in the correct position. Click [SAVE] for each pose you create before moving on to the next.

<li/>When you have finished saving all your poses, click [DUMP] to output your settings into chat.

{% include note.html content="If you use a translator, turn it off before pressing [DUMP]." %}

<li/>Copy-paste the [DUMP] result into your AVP_Positions notecard, replacing the contents of the notecard.

{% include note.html content="A web link is now given as a link at the end of the settings [DUMP], which is more reliable than copying from SL chat." %}

<li/>If required, you can rez the [HELPER] again and add more poses.

<li/>To add poses to other prims in your object, simply repeat the process.
</ol>
<br>
{% include important.html content="When you [DUMP] you'll see the diamond character (&diams;) on every line. All text on a notecard line before the diamond is ignored by the script. This allows you to copy-paste chat output directly into your notecard without having to remove the timestamp from every line. If you remove the timestamps from your notecard then you can safely remove the diamonds." %}

{% include tip.html content="Once setup is complete, you can (optionally) remove the AVP_helper and AVP_adjuster from your furniture. Leaving them in will allow the <u>next owner</u> to modify and [SAVE] the default pose positions (although they will not have access to [DUMP] or [NEW] unless they are an AVsitterPlus owner)." %}

<br>
<b>Basic Setup Video</b>

<iframe height="349" src="https://www.youtube.com/embed/Oie421iU1P8?rel=0" frameborder="0" width="560" allowfullscreen=""></iframe>

{% include tip.html content="If English is not your language, the videos have captions for automatic translation." %}

### Couples Prim Setup

Setup of a prim for multiple avatars is the same as for <a href="/avsitterplus_home.html#basic-prim-setup">Basic Prim Setup</a>, with a few additions:

<ol>
<li/>Your object must have a prim count equal to or greater than the number of avatars you plan on sitting.

<li/>You will need to drop one pair of AVP_sit (A+B) scripts into the prim <i>for each avatar you want to sit</i>.
i.e. For 2 sitters you'll need 2 pairs of AVP_sit (A+B) scripts.

{% include note.html content="SL should automatically name your scripts sequentially when you drop them in together. Please make sure it does this correctly, as the names must be sequential. i.e. AVP_sitA, AVP_sitA 1, AVP_sitB, AVP_sitB 1" %}

<li/>In the [NEW] menu, choosing [POSE] will create a singles pose and choosing [SYNC] will create a couples pose.

{% include note.html content="Choosing [POSE] will add a singles POSE only to the menu of the SITTER <i>you are on</i>. Press [SWAP] first if you need to move to a different SITTER's menu before adding the pose. The active SITTER # is listed in the menu." %}

{% include note.html content="Choosing [SYNC] will add a SYNC pose to the menu of <i>multiple SITTERs</i> (e.g. SITTER 0 and SITTER 1)." %}

{% include important.html content="Singles poses should be positioned so that they do not overlap the positions set for other sitters. e.g. SITTER 0 poses on left-hand side of the furniture, and SITTER 1 on right-hand side." %}

{% include important.html content="The first pose in each SITTER is the default pose for the seat. Even in couples furniture, you should usually make the first pose in each SITTER's menu a singles POSE." %}

</ol>
<br>
<b>Couples Setup Video</b>

<iframe height="349" src="https://www.youtube.com/embed/A0O83Y8zqUw?rel=0" frameborder="0" width="560" allowfullscreen=""></iframe>

{% include tip.html content="If English is not your language, the videos have captions for automatic translation." %}

### Submenus

To create a submenu...

<ol>
<li/>In the [NEW] menu, choose [SUBMENU]. This will create a submenu <u>only in the menu of the SITTER you are on</u>.
<li/>Navigate to your submenu and then create new [POSE], [SYNC], or [SUBMENU] inside the submenu.
</ol>

{% include note.html content="[SUBMENU] will only add to the menu of the SITTER you are on. If want to have the same submenu in another SITTER's menu, you will need to press [SWAP] to move to the other SITTER and create the submenu there too." %}

{% include important.html content="If adding a [SYNC] pose, the pose will be added to whichever submenu was last selected. This applies separately to each SITTER's menu. You will need to press [SWAP] to move to the other SITTER and create/select the submenu there too." %}

{% include important.html content="Adding poses to submenus via the [NEW] menu is for beginners. You can create, re-order, rename, delete submenus by learning the TOMENU and MENU commands covered in the <a href='/avsitterplus_avp_positions.html'>Notecard Section</a>." %}

### Camera

To save a camera position...

<ol>
<li/>In the [NEW] menu, choose [CAMERA] then [SAVE]. This will save your camera view for all sitters in the prim.
<li/>To remove all camera settings from the object, choose [CAMERA] then [CLEAR].
<li/>Changes to camera settings will take effect the next time you sit.
</ol>

{% include note.html content="The camera setting is a prim property and does not require anything to be placed in the AVP_Positions notecard." %}

{% include warning.html content="For camera settings in multiple prims, be aware of JIRA <a href=\"https://jira.secondlife.com/browse/BUG-5494\">BUG-5494</a>." %}

{% include note.html content="If you need a different camera position for each pose, see information for the <a href='/avsitterplus_camera.html'>AVP_camera script</a> instead." %}

### Chat Commands

The following chat commands can be typed into local chat while the AVP_adjuster and AVP_helper are in the furniture:

<ul>
<li/>/5 helper - rezzes the helpers (alternate to using menu).

<li/>/5 cleanup - deletes the AVP_adjuster & AVP_helper from the prim.

<li/>/5 &lt;avatar uuid&gt; - moves the helper into the exact position of another avatar. Useful for copying positions from poseballs.

<li/>/5 targets - briefly shows the <a href="/avsitterplus_sittargets.html">SitTargets</a> in hovertext.</ul>

### Making Corrections

If you do not get things right the first time, you can always make corrections or additions:

<ul>
<li/>To change the position of a pose, or to add new poses, you can always select [HELPER] again, position the pose, and [SAVE]. Remember to [DUMP] your settings again and save them to the AVP_Positions notecard after making any changes.

<li/>If you want to rename or change the order of any menu items you can manually edit <a href="/avsitterplus_avp_positions.html">the AVP_Positions notecard</a>.

<li/>To delete a pose, you must manually remove the lines from the <a href="/avsitterplus_avp_positions.html">the AVP_Positions notecard</a>.

<li/>As with all building in SL, you should take a backup of your work regularly to avoid losing progress.

</ul>

## Advanced Setup

The [NEW] menu described on this page is a great way to start using AVsitterPlus, however you will have much more control when you learn to edit the notecard manually. After you can follow the tutorials on this page you should then learn the format of the <a href="/avsitterplus_avp_positions.html">AVP_Positions notecard</a> and learn about the <a href="/avsitterplus_utilities.html">utility scripts</a>. Advanced users can then consider <a href="/avsitterplus_scripting.html">custom scripting</a> or one of the available plugins.

### Multiple Setups

It is possible to have any mix of singles & couples setups in different prims of the same furniture, however you must follow the instructions given in the <a href="/avsitterplus_sittargets.html">SitTargets section</a>.

### Setups for 3+ Avatars

Setups in one prim for 3+ avatars is the same as for <a href="/avsitterplus_home.html#couples-prim-setup">couples setup</a> but needs to include more pairs of AVP_sit (A+B) scripts. The [NEW] menu will allow you to add a SYNC pose for multiple SITTERs but you should also learn to add/edit poses <a href="/avsitterplus_avp_positions.html">manually in the notecard</a>.

{% include note.html content="If your furniture does not include SYNC poses you could instead set each avatar's poses in separate prims. e.g. a table with 4 chairs around would usually be best with a singles setup in each chair, rather than 4 SITTERs in one." %}

{% include warning.html content="There is no set limit but it's not recommended to have more than 6 SITTERs in the same prim." %}

### Animation Sequences

AVsitterPlus provides two ways to do sequences: the <a href="/avsitterplus_sequence.html">AVP_sequence&trade;</a> script and the <a href="/avsitterplus_avp_positions.html#built-in-animation-sequence">"built-in" sequence</a> method. Read about both and use the method most appropriate for your situation.

### Sounds and Songs

Playing sound files is achieved with the <a href="/avsitterplus_sequence.html">AVP_sequence&trade;</a> script (includes playing a single sound with a pose, or a complete song).

## Migration from AVsitter

An existing AVsitter deployment can easily migrate to AVsitterPlus by replacing the AVsitter scripts with the corresponding AVsitterPlus scripts and renaming the `[AV]pos` notecard to `AVP_Positions`. Each piece of furniture that has previously been configured with AVsitter must be edited, the scripts replaced, and the notecard(s) renamed. A migration tool is in development.

### Script Replacement Mapping

In order to comply with the `AVsitter` trademark restrictions, `AVsitterPlus` has not only been renamed from `AVsitter` but all `[AV]*` scripts, plugins, objects, and utilities have been renamed. Renaming generally conforms to the pattern of replacement `[AV]` -> `AVP_`. For example, the `AVsitter` script `[AV]sitA` has been renamed to `AVP_sitA` in `AVsitterPlus`.

The mapping between AVsitter names and AVsitterPlus names is as follows:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>AVsitter</th>
<th>AVsitterPlus</th>
</tr>
</thead>
<tbody>
<tr>
<td markdown="span">[AV]pos</td>
<td markdown="span">AVP_Positions</td>
</tr>
<tr>
<td markdown="span">[AV]adjuster</td>
<td markdown="span">AVP_adjuster</td>
</tr>
<tr>
<td markdown="span">[AV]helper</td>
<td markdown="span">AVP_helper</td>
</tr>
<tr>
<td markdown="span">[AV]sitA</td>
<td markdown="span">AVP_sitA</td>
</tr>
<tr>
<td markdown="span">[AV]sitB</td>
<td markdown="span">AVP_sitB</td>
</tr>
<tr>
<td markdown="span">[AV]select</td>
<td markdown="span">AVP_select</td>
</tr>
<tr>
<td markdown="span">[AV]root-security</td>
<td markdown="span">AVP_root-security</td>
</tr>
<tr>
<td markdown="span">[AV]camera</td>
<td markdown="span">AVP_camera</td>
</tr>
<tr>
<td markdown="span">[AV]faces</td>
<td markdown="span">AVP_faces</td>
</tr>
<tr>
<td markdown="span">[AV]menu</td>
<td markdown="span">AVP_menu</td>
</tr>
<tr>
<td markdown="span">[AV]object</td>
<td markdown="span">AVP_object</td>
</tr>
<tr>
<td markdown="span">[AV]prop</td>
<td markdown="span">AVP_prop</td>
</tr>
<tr>
<td markdown="span">[AV]sequence</td>
<td markdown="span">AVP_sequence</td>
</tr>
<tr>
<td markdown="span">[AV]sequence_settings</td>
<td markdown="span">AVP_sequence_settings</td>
</tr>
<tr>
<td markdown="span">[AV]LockGuard</td>
<td markdown="span">AVP_LockGuard</td>
</tr>
<tr>
<td markdown="span">[AV]LockGuard-object</td>
<td markdown="span">AVP_LockGuard-object</td>
</tr>
<tr>
<td markdown="span">[AV]root-control</td>
<td markdown="span">AVP_root-control</td>
</tr>
<tr>
<td markdown="span">[AV]root-RLV</td>
<td markdown="span">AVP_root-RLV</td>
</tr>
<tr>
<td markdown="span">[AV]root-RLV-extra</td>
<td markdown="span">AVP_root-RLV-extra</td>
</tr>
<tr>
<td markdown="span">[AV]Xcite!</td>
<td markdown="span">AVP_Xcite</td>
</tr>
<tr>
<td markdown="span">[AV]Xcite_settings</td>
<td markdown="span">AVP_Xcite_settings</td>
</tr>
<tr>
<td markdown="span">AVhipfix</td>
<td markdown="span">AVP_hipfix</td>
</tr>
<tr>
<td markdown="span">AVpos-generator</td>
<td markdown="span">pos-generator</td>
</tr>
<tr>
<td markdown="span">Not Included</td>
<td markdown="span">AVP_LockMeister</td>
</tr>
<tr>
<td markdown="span">Not Included</td>
<td markdown="span">AVP_favs</td>
</tr>
<tr>
<td markdown="span">Not Included</td>
<td markdown="span">PMAC-Converter</td>
</tr>
</tbody>
</table>

If not listed in the mapping table the name remains the same. Existing preconfigured notecards can simply be renamed, preserving their contents. Existing AVsitter scripts must be replaced with their AVsitterPlus counterpart.

{% include links.html %}
