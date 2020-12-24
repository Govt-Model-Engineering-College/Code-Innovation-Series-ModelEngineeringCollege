import React, { useState } from "react";
import { Grid, Button, TextField } from "@material-ui/core";
import { Route, useHistory, useLocation } from "react-router-dom";
const axios = require("axios");

export function PrivateRoute({ children }) {
  return <Route render={({ location }) => children} />;
}

export function DoctorLoginForm() {
  const [username, setUserName] = useState("");
  const [password, setPassword] = useState("");

  const history = useHistory();
  const location = useLocation();
  const { from } = location.state || { from: { pathname: "/doctorHome" } };
  const login = () => {
    history.replace(from);
  };

  return (
    <>
      <Grid container direction="column" spacing={3} alignItems="center">
        <Grid item>
          <TextField
            required
            id="outlined-required"
            label="Username"
            variant="outlined"
            onChange={(event) => setUserName(event.target.value)}
          />
        </Grid>
        <Grid item>
          <TextField
            required
            id="outlined-password-input"
            label="Password"
            type="password"
            variant="outlined"
            onChange={(event) => setPassword(event.target.value)}
          />
        </Grid>
        <Grid item>
          <Button
            variant="contained"
            color="primary"
            onClick={async (props) => {
              try {
                const response = await axios.post(
                  "http://localhost:5000/api/user/login",
                  {
                    email: username,
                    password: password,
                  }
                );
                console.log(response);
                login();
              } catch (err) {
                console.log(err);
              }
            }}
          >
            Login
          </Button>
        </Grid>
        <Grid item>
          <Button variant="contained" color="secondary">
            Sign Up
          </Button>
        </Grid>
      </Grid>
    </>
  );
}

export function PatientLoginForm() {
  const [username, setUserName] = useState("");
  const [password, setPassword] = useState("");

  const history = useHistory();
  const location = useLocation();
  const { from } = location.state || { from: { pathname: "/patientHome" } };
  const login = () => {
    history.replace(from);
  };

  return (
    <>
      <Grid container direction="column" spacing={3} alignItems="center">
        <Grid item>
          <TextField
            required
            id="outlined-required"
            label="Username"
            variant="outlined"
            onChange={(event) => setUserName(event.target.value)}
          />
        </Grid>
        <Grid item>
          <TextField
            required
            id="outlined-password-input"
            label="Password"
            type="password"
            variant="outlined"
            onChange={(event) => setPassword(event.target.value)}
          />
        </Grid>
        <Grid item>
          <Button
            variant="contained"
            color="primary"
            onClick={async () => {
              try {
                const response = await axios.post(
                  "http://localhost:5000/api/user/login",
                  {
                    email: username,
                    password: password,
                  }
                );
                console.log(response);
                login();
              } catch (err) {
                console.log(err);
              }
            }}
          >
            Login
          </Button>
        </Grid>
        <Grid item>
          <Button variant="contained" color="secondary" onClick={() => {}}>
            Sign Up
          </Button>
        </Grid>
      </Grid>
    </>
  );
}
