import React, { useState } from "react";
import { Dropdown } from "react-native-material-dropdown-v2";

export default function InputDropdown(props) {
  return (
    <Dropdown
      containerStyle={props.style}
      label={props.label}
      data={props.list}
      baseColor={props.baseColor}
      textColor={props.textColor}
      selectedItemColor={props.selectedItemColor}
      itemTextStyle={
        props.itemTextStyle === undefined ? {} : props.itemTextStyle
      }
    /> // edited lines 509 - 521 in defenition
  );
}
