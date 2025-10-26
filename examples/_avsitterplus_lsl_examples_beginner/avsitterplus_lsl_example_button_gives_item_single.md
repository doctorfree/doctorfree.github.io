---
title:  "Button Gives Single Item"
layout: page
permalink: avsitterplus_lsl_example_button_gives_item_single.html
---

```js
/******************************************************************
* This example will give an object to an avatar who presses a BUTTON in the menu
* You will need a line in the AVP_Positions notecard to create the BUTTON:
* e.g. BUTTON Coffee|0
******************************************************************/

string button = "Coffee";
string itemname = "Coffee Cup";

default{
    link_message(integer sender, integer num, string msg, key id){
        if(msg==button){
            llGiveInventory(id,itemname);
        }
    }
}
```
