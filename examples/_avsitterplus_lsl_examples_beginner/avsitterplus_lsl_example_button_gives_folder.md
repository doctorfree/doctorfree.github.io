---
title:  "Button Gives Folder"
permalink: avsitterplus_lsl_example_button_gives_folder.html
---

```js
/******************************************************************
* This example will give items in a folder when a BUTTON is pressed
* You will need a line in the AVP_Positions notecard to create the BUTTON:
* e.g. BUTTON Give Items|0
******************************************************************/

string button = "Give Items";
list items = ["Item1","Item2","Item3"];
string foldername = "Object Folder";

default{
    link_message(integer sender, integer num, string msg, key id){
        if(msg==button){
            llGiveInventoryList(id,foldername,items);
        }
    }
}
```
