import React from "react";
import { Switch, Route } from "react-router-dom";
import Login from "./pages/login/login";
import DoctorHome from "./pages/doctorHome/doctorHome";
import PatientHome from "./pages/patientHome/patientHome";
import { PrivateRoute } from "./pages/login/loginForm";

function App() {
  return (
    <>
      <Switch>
        <Route exact path="/">
          <Login />
        </Route>
        <PrivateRoute exact path="/doctorHome">
          <DoctorHome />
        </PrivateRoute>
        <PrivateRoute exact path="/patientHome">
          <PatientHome />
        </PrivateRoute>
      </Switch>
    </>
  );
}

export default App;
