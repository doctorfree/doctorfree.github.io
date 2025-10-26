---
title: In-world Updates
date: 2025-10-21 12:00:21 +0800
layout: page
tags: updates, release notes
permalink: updates.html
toc: false
---

## Updates in Second Life

If you have purchased AVsitterPlus in Second Life, please collect the latest package by visiting our <a href="{{ site.inworld }}">location in Second Life</a> and click the update giver on the table. The latest packaged release is also sent when you rez the AVsitterPlus package in Second Life.

## Updates in OpenSim

If you have purchased AVsitterPlus for OpenSim from Kitely Market, we suggest you manage any updates manually by taking any updated scripts from the <a href='https://github.com/AVsitterPlus/AVsitterPlus/releases'>the project release page</a> however to request a packaged update please IM Missy Restless in Second Life or email missyrestless@gmail.com.

## Notes about updates

{% include note.html content="Before starting a new project, it is a good idea to check <a href='https://github.com/AVsitterPlus/AVsitterPlus/releases'>the project release page</a> for the latest version." %}

{% include tip.html content="When a script is updated, the current box number is placed in the description of the script." %}

{% include warning.html content="For compatibility reasons, please make sure ALL scripts in the furniture are from the SAME box version." %}

## Previous AVsitter2 Release history

{% include important.html content="Release notes can now be found <a href='https://github.com/AVsitterPlus/AVsitterPlus/releases'>on the project release page</a>." %}

### AVsitter2, box 2.2-01 - 10 Aug 2017
- Scripts in the SL package updated to sync with <a href="https://github.com/AVsitter/AVsitter/releases/tag/2.2-01">first GitHub release</a>.

### AVsitter2, box 2.2 - 31 Jul 2017
- Scripts have been made full-perm in this latest release. For details click <a href="/news-2017-07-31.html">here</a>.

### AVsitter2, box 2.1-14.04 - 20 Apr 2017
- AVP_adjuster, AVP_prop - pose and prop position data always appears in chat when clicking [SAVE] (removed the /5 info option from <a href="/avsitter2_home.html#chat-commands">chat commands</a>).

### AVsitter2, box 2.1-14.03 - 15 Apr 2017
- AVP_sitB - changes to [BACK] button. Should allow duplicate TOMENU leading to the same submenu while keeping back button reliable for at least one level.

### AVsitter2, box 2.1-14 - 24 Dec 2016
- AVP_sitA - added <a href="/avsitter2_scripting.html#message-90004">90004</a>, a variant of 90005 that brings up the top level of the menu.
- AVP_sitA - added <a href="/avsitter2_avpos.html#extra-notecard-commands">DFLT 0</a> - don't revert to the default pose when all avatars stand (unless the last pose was a SYNC pose).
- AVP_sitB - ability to control which submenus have [ADJUST] and [SWAP] buttons (<a href="//avsitter.com/qa/652">info</a>).
- AVP_sitB - added <a href="/avsitter2_avpos.html#mtype">MTYPE 4</a>. Same as MTYPE 3, except the menu does not automatically return when a pose is selected.
- AVP_faces - re-use defined faces ANIM line by referring to another faces ANIM line e.g. <code>ANIM pose2|pose1</code> (<a href="/avsitter2_faces.html#notecard-commands">see example</a>)
- AVP_camera - <a href="/avsitter2_camera.html">camera script presets</a> can be selected by BUTTON (<a href="//avsitter.com/qa/939">info</a>).
<a href="/avsitter2_utilities.html#missing-anim-finder-script">Missing-anim-finder script</a> - gives the option to delete animations that are not used from the prim inventory.

### AVsitter2, box 2.1-12 - 22 Apr 2016
- AVP_sitB - sends link message <a href="/avsitter2_scripting.html#message-90051">90051</a> when a submenu is chosen (<a href="//avsitter.com/qa/760/">info</a>).
- AVP_sitB - link message <a href="/avsitter2_scripting.html#message-90005">90005</a> can now be used to bring up a specific submenu (<a href="//avsitter.com/qa/761">info</a>).
- AVP_sitB - options for the MENU command to override <a href="/avsitter2_avpos.html#amenu">AMENU</a> or <a href="/avsitter2_avpos.html#swap">SWAP</a> settings for a specific submenu (<a href="//avsitter.com/qa/652">info</a>).
- AVP_sitA - <a href="/avsitter2_scripting.html#message-90045">90045</a> now includes IS_SYNC and updated <a href="/avsitter2_lsl_examples_advanced.html#autoplay">Autoplay example</a> script (<a href="//avsitter.com/qa/601">info</a>).

### AVsitter2, box 2.1-11 - 20 Jan 2016
- AVP_sitA, AVP_sitB, AVP_select, AVP_adjuster, AVP_prop, AVP_faces, AVP_sequence, AVP_root-security, AVP_root-control, AVP_root-rlv - modification to <a href="/avsitter2_avpos.html#button">BUTTON</a> and <a href="/avsitter2_scripting.html#message-90005">90005</a> for when an avatar is controlling another avatar's menu with <a href="/avsitter2_control.html">AVcontrol</a>. (<a href="//avsitter.com/qa/573">info</a>).
- AVP_adjuster, AVP_sitA, AVP_sitB - the owner can rez the helpers while controlling another avatar (<a href="//avsitter.com/qa/557">info</a>).
- AVP_sitA - guests can rez the helpers if the word HELPER is anywhere in the root prim name (<a href="//avsitter.com/qa/575">info</a>).
- AVP_root-security - <a href="/avsitter2_utilities.html#avroot-security-script">security menu</a> now has separate options for both "Sit" and "Menu" access (<a href="//avsitter.com/qa/568">info</a>).
- AVP_menu - now only gives [NEW] and [DUMP] options if the prim is MODIFY-OK.
- AVP_sequence - only pre-load sounds when there is a WAIT >= 2 seconds above the <a href="/avsitter2_sequence.html#sound">SOUND</a> line.
- AVP_object ~ does not change click action of a rezzed prop if there's AVP_sitA inside (i.e. if rezzing furniture as a prop).

### AVsitter2, box 2.1-10 - 07 Nov 2015
- Several changes to AVcontrol plugin including the following updates to the <a href="/avsitter2_control.html">AVcontrol instructions</a>:
    - Added ONRELEASE and ONSIT ASKONLY options.
    - Default is now to unsit RLV captives when released (if you don't want this see info for ONRELEASE).
    - If a Dom is sitting, then non-sitting avatars can't control the menu even if furniture is 'unlocked'.
    - SWAP now enabled by default unless using ONSIT ASK or ONSIT ASKONLY.
    - Added new <a href="/avsitter2_examples.html">AVcontrol examples</a>.
    - Updated scripts include: AVP_sitA, AVP_sitB, AVP_root-security, AVP_root-control, AVP_root-RLV, AVP_root-RLV-extra
- AVP_sequence - only stops sounds if the last played sequence includes sounds (for compatability with other sound scripts).
- AVP_camera - added <a href="/avsitter2_camera.html">AVP_camera script</a> to the Utilities box.

### AVsitter2, box 2.1-09 - 12 Oct 2015
- AVP_sitA & AVP_sitB - <a href="/avsitter2_avpos.html#auto-assign-by-gender">auto seat and pose assignment</a> now prefers non-assigned seat to that assigned to opposite gender.
- AVP_sitA - added <a href="https://avsitter.com/qa/260">LROT</a> to make XYZ positioning buttons work relative to rotation of the root prim, instead of global.
- AVP_sitA - adjustments to the <a href="//avsitter.com/qa/259/">KFM</a> option to handle sync poses.
- AVP_faces - now stops any custom overlay AVfaces animations when the main pose changes.
- AVP_prop - added ability to send an integer in <a href="/avsitter2_prop.html#lsl-link-messages-to-send">90220</a> to specify a SITTER#.
- AVP_menu - allow end-user owner to save new prop positions to script memory.

### AVsitter2, box 2.1-08 - 12 Aug 2015
- AVP_sitA & AVP_adjuster - in case they are not sitting, owner can type '/5 helper' in chat to rez helpers for friend.
- AVP_sitA - added <a href="//avsitter.com/qa/259/">KFM</a> option if the object uses <a href="http://wiki.secondlife.com/wiki/LlSetKeyframedMotion">llSetKeyframedMotion()</a>.
- AVP_sitB - with <a href="/avsitter2_avpos.html#etype">ETYPE 1</a>, avatars will now remain in their pose when an unrelated pose is played in the prim.
- AVP_Lockguard - now uses pose name (rather than prop name) when USES_PROPS = TRUE (latest version is 3.03a).

### AVsitter2, box 2.1-07 - 17 Jul 2015
- AVP_prop - added link message <a href="/avsitter2_prop.html#lsl-link-messages-to-send">90220</a>, variation of 90200 which does not return the menu.
- Updated <a href="/avsitter2_lsl_examples_avprop.html#rez-same-prop-for-several-poses">"Rez Same Prop for Several Poses"</a> example to use 90220.
- AVP_faces - added ability to continually <a href="/avsitter2_faces.html">re-apply an expression</a> (some discussion <a href="//avsitter.com/qa/219/">here</a>).

### AVsitter2, box 2.1-06 - 04 Jul 2015
- AVP_object - added support for <a href="/avsitter2_prop.html#experience-keys">Experience Keys</a>. Props will attach automatically, if the correct Experience is allowed on the land and the props contain the latest AVP_object script (discussion <a href="//avsitter.com/qa/198/">here</a>).

### AVsitter2, box 2.1-05 - 24 Jun 2015
- AVP_sitA & AVP_sitB & AVP_adjuster - added support for <a href="/avsitter2_avpos.html#auto-assign-by-gender">auto seat and pose assignment</a> based on avatar's shape gender.
- [sitB] - added option to use %u in key field of <a href="/avsitter2_avpos.html#button">BUTTON</a> to insert sitter's UUID (may be helpful for AVcontrol menus).
- AVP_adjuster - fixed bug with settings dump to website.
- Added AVprop script example <a href="/avsitter2_lsl_examples_avprop.html#animated-attachment">Animated Attachment</a>.

### AVsitter2, box 2.1-04 - 12 Jun 2015
- AVP_adjuster & AVP_helper - are now TRANSFER-OK and can (optionally) be left in the furniture, allowing the <u>next owner</u> to [SAVE] the default pose positions (although they will not have access to [DUMP] or [NEW] unless they are an AVsitter2 owner - see <a href="//avsitter.com/qa/26/">q&a</a>).
- AVP_sitA - personal pose adjustments can still be made while the AVP_adjuster & AVP_helper are in the furniture.

### AVsitter2, box 2.1-03 - 25 Mar 2015
- AVP_adjuster - after settings [DUMP], a web link is provided to settings.
- AVP_sequence - added <a href="/avsitter2_sequence.html#sound">preloading of sounds</a> & added Piano Example to the Examples [BOX].
- AVP_menu - updated to support user-defined string and key in <a href="/avsitter2_avpos.html#button">BUTTON</a> command.

### AVsitter2, box 2.1-02 - 12 Feb 2015
- AVP_adjuster - type <a href="/avsitter2_home.html#chat-commands">/5 info</a> in chat while in helper mode and the position info will now appear in chat when you click [SAVE].
- AVP_prop - added "remprop_" to de-rez props by <a href="/avsitter2_prop.html#de-rezzing-props-by-button">BUTTON</a> or <a href="/avsitter2_prop.html#lsl-scripting">link message</a>. - AVP_Lockguard - fixed "too many listens" error when attaching Lockguard chains to props (latest version is 3.02a).

### AVsitter2, box 2.1-01 - 07 Jan 2015
- AVP_adjuster & AVP_helper - Added ability to type <a href="/avsitter2_home.html#chat-commands">/5 &lt;avatar uuid&gt;</a> in chat to move the helper.
- AVP_sitB - added <a href="/avsitter2_avpos.html#mtype">MTYPE 2</a> to workaround third-party viewer issues that prevent attachment requests being noticed.
- Added AVprop script example <a href="/avsitter2_lsl_example_show_and_hide_prim_by_prop_group.html">Show and Hide Prim by Prop Group</a>.

### AVsitter2, box 2.1-00 - 30 Oct 2014
- Added <a href="/avsitter2_sequence.html">AVP_sequence script</a> to the AVsitter Utilities [BOX] (replaces old scripted sequence method).
- AVP_sitA & AVP_sitB - fixed helper issue preventing avatar from moving immediately when swapping to a sitter with no poses.
- AVP_faces - holds facial expressions as integers within the script to improve memory use.

### AVsitter2, box 2.0-15 - 17 Sep 2014
- Added instructions for <a href="/avsitter2_scripting.html#message-90030">90030 link message</a>.
- AVP_sitB - <a href="/avsitter2_avpos.html#button">BUTTON</a> command updated to allow user-defined string and key.
- AVP_sitB - fixed bug sometimes preventing first menu item of 2nd page of animations being shown (since 2.0-14).
- AVP_sitA & AVP_sitB & AVP_adjuster & AVP_helper - allows AVsitter1 style helpers by placing HELPER 1 at the top of the AVpos notecard.
- AVP_Xcite! & AVP_Xcite_settings notecard - allows default settings for all poses by using a wildcard (*) in place of the pose name.

### AVsitter2, box 2.0-14.4 - 04 Sep 2014
- AVP_sitB - changes and fixes for the <a href="/avsitter2_avpos.html#variable-speed-animations">variable speed</a> animations.

### AVsitter2, box 2.0-14.3 - 20 Aug 2014
- AVP_sitB - fixed bug with script listens.
{% include warning.html content="All furniture using 2.0-14 or 2.0-14.2 should be updated with new sitB." %}

### AVsitter2, box 2.0-14.2 - 23 Jul 2014
- AVP_sitB - fixed bug in 2.0-14 causing positions to be overwritten by new poses.

### AVsitter2, box 2.0-14 - 22 Jul 2014
- AVP_sitA & AVP_sitB - Support for <a href="/avsitter2_avpos.html#variable-speed-animations">variable speed</a> animations (used by some animators).
- AVP_adjuster - for more compact settings, [DUMP] rounds position to 1 millimeter & rotation to 1/10 degree.

### AVsitter2, box 2.0-13 - 27 Jun 2014
- Added script example <a href="/avsitter2_lsl_examples_advanced.html#move-a-prim-by-pose">Move a Prim</a>.
- AVP_sitA - added small pause between starting/stopping anims to avoid 'bounce' while new anim loads to viewer.
- AVP_sitA - the <a href="/avsitter2_scripting.html#message-90045">90045</a> link message now includes a list of all sitting avatars.
- AVP_select - added <a href="/avsitter2_avpos.html#select">SELECT 2</a> option.
- AVP_menu - added <a href="/avsitter2_avpos.html#mtype">MTYPE 3</a> command to <a href="/avsitter2_prop.html#setting-up-a-prop-with-avmenutrade">AVP_menu</a> script.
- AVP_Lockguard - support for linking LockGuard chains to rings in props (instructions inside the AVP_Lockguard script).

### AVsitter2, box 2.0-12 - 02 Jun 2014
- AVP_sitA - end-user [ADJUST] menu now allows saving of a personal offset for all poses at once.
- AVP_sitB - added link message <a href="/avsitter2_scripting.html#message-90050">90050</a>.
- AVP_sitA & AVP_root-security - when using AVP_select with AVP_root-security, the select menu should now be the first menu as expected.

### AVsitter2, box 2.0-11 - 20 May 2014
- Added <a href="/avsitter2_utilities.html#missing-anim-finder-script">Missing-anim-finder script</a> to Utilities [BOX].
- AVP_sitA & AVP_adjuster - it is now possible to save <a href="/avsitter2_home.html#camera">prim camera settings</a>.
- AVP_sitA & AVP_sitB - when using <a href="/avsitter2_avpos.html#mtype">MTYPE 3</a>, menu can be accessed via link message <a href="/avsitter2_scripting.html#message-90005">90005</a>.
- AVP_sitA & AVP_sitB & AVP_adjuster - added <a href="/avsitter2_avpos.html#amenu">AMENU</a> command.
- AVP_sitA & AVP_sitB & AVP_adjuster - fix to include SELECT and ETYPE in settings dump.

### AVsitter2, box 2.0-09 - 18 Mar 2014
- AVP_adjuster - adding SYNC poses via menu now allows for 3+ avatars.
- AVP_sitB - addition of <a href="/avsitter2_avpos.html#swap">SWAP 2</a> notecard command.
- AVP_prop - props rezzed by <a href="/avsitter2_prop.html#setting-up-a-prop-with-avmenutrade">AVP_prop in non-sit prim</a> will remain when avatar stands up.
- AVP_menu script - shortens selection menu text if too long for llDialog.
- AVP_root-security - added GROUP ONLY menu access setting to AVcontrol plugin.
- Updated <a href="/avsitter2_examples.html">AVP_prop Example#03 (table)</a> in the Plugins Examples box to include rezzing prim in center.
- Added <a href="/avsitter2_utilities.html#mlp-converter-script">MLP-converter</a> to Utilities [BOX].

### AVsitter2, box 2.0-08 - 05 Mar 2014
- AVP_sitA & AVP_sitB- fixed issue with SWAP sending double 90045 link-messages for a SYNC pose.
- AVP_prop & AVP_object - PROP1 attachment props should now de-rez properly when taken by a different avatar than they were rezzed for.
{% include warning.html content="If updating, remember to replace all copies of AVP_object in your props." %}

### AVsitter2, box 2.0-07 - 24 Feb 2014
- AVP_sitA - fixed bug causing script error if avatar's AO uses llSetAnimationOverride().
- AVP_sitA - link message <a href="/avsitter2_scripting.html#message-90045">90045</a> now includes the SET #.
- AVP_sitB - duplicate menu entries are no longer skipped.
- AVP_sitA & AVP_sitB & AVP_adjuster - addition of <a href="/avsitter2_avpos.html#adjust">ADJUST</a> notecard command.
- AVP_helper - You can now take a copy of the "helper" script from inside the AVP_helper and put into an object of your own customized shape.

### AVsitter2, box 2.0-06 - 04 Feb 2014
- AVP_sitA & AVP_adjuster - simplified default SitTargets: assigns avis to sitters in the order in which they sit (<a href="/avsitter2_sittargets.html">see SitTargets</a>).

### AVsitter2, box 2.0-05 - 31 Jan 2014
- AVP_sitA & AVP_sitB - <a href="/avsitter2_scripting.html#link-messages-to-receive">scripting link messages</a> now use LINK_SET.
- Added <a href="/avsitter2_utilities.html#anim-perm-checker-script">Anim perm checker</a> to Utilities [BOX].

### AVsitter2, box 2.0-04 - 29 Jan 2014
- AVP_adjuster - shortens selection menu text if too long for llDialog.
- AVP_adjuster - for more compact settings, [DUMP] rounds position to 1/10 millimeter & rotation to 1/100 degree.

