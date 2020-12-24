import React from "react";
import { Card, CardContent, CardHeader } from "@material-ui/core";
import { PatientLoginForm } from "./loginForm";

export default function PatientLogin() {
  return (
    <Card>
      <CardHeader title="Patient Login" />
      <CardContent>
        <PatientLoginForm />
      </CardContent>
    </Card>
  );
}
