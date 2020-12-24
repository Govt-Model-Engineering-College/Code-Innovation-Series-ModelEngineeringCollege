import { CssBaseline, Grid } from "@material-ui/core";
import React from "react";
import { DoctorHomeHeader } from "../../components/header";
import AddPatient from "./addPatient";
import ViewPatient from "./viewPatient";

export default function DoctorHome() {
  return (
    <>
      <CssBaseline>
        <DoctorHomeHeader />
      </CssBaseline>
      <Grid direction="column">
        <Grid item>
          <AddPatient />
        </Grid>
        <Grid item>
          View Patient Details
          <ViewPatient />
        </Grid>
      </Grid>
    </>
  );
}
