import React from "react";
import { CssBaseline, Grid } from "@material-ui/core";
import { makeStyles } from "@material-ui/core/styles";
import { LoginHeader } from "../../components/header";
import DoctorLogin from "./doctorLogin";
import PatientLogin from "./patientLogin";

const useStyles = makeStyles({
  gridContainer: {
    paddingTop: "20px",
    paddingLeft: "20px",
    paddingRight: "20px",
    margin: "0",
    width: "100%",
  },
});

export default function Login() {
  const classes = useStyles();
  return (
    <>
      <CssBaseline>
        <LoginHeader />
      </CssBaseline>
      <Grid
        container
        direction="row"
        spacing={10}
        className={classes.gridContainer}
      >
        <Grid item xs={false} sm={1} md={2}></Grid>
        <Grid item xs={12} sm={5} md={4}>
          <DoctorLogin />
        </Grid>
        <Grid item xs={12} sm={5} md={4}>
          <PatientLogin />
        </Grid>
        <Grid item xs={false} sm={1} md={2}></Grid>
      </Grid>
    </>
  );
}
