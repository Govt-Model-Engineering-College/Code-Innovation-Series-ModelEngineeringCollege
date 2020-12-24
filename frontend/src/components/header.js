import React from "react";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import { IconButton, makeStyles } from "@material-ui/core";
import AccountCircleIcon from "@material-ui/icons/AccountCircle";

const useStyles = makeStyles(() => ({
  head: {
    flexGrow: 4,
  },
}));

export function LoginHeader() {
  return (
    <AppBar position="static" color="primary">
      <Toolbar>
        <Typography variant="h6">Patient DB Management</Typography>
      </Toolbar>
    </AppBar>
  );
}

export function DoctorHomeHeader() {
  const classes = useStyles();
  return (
    <AppBar position="static" color="primary">
      <Toolbar>
        <Typography className={classes.head} variant="h6">
          Patient DB Management
        </Typography>
        <IconButton>
          <AccountCircleIcon />
        </IconButton>
      </Toolbar>
    </AppBar>
  );
}
