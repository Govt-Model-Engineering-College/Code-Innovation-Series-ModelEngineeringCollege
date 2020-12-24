import React from "react";
import { Card, CardContent, CardHeader } from "@material-ui/core";
import { DoctorLoginForm } from "./loginForm";

export default function DoctorLogin() {
  return (
    <Card>
      <CardHeader title="Doctor Login" />
      <CardContent>
        <DoctorLoginForm />
      </CardContent>
    </Card>
  );
}
