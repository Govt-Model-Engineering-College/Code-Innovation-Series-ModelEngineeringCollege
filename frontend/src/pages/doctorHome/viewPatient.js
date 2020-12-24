import {
  Paper,
  Table,
  TableBody,
  TableContainer,
  TableCell,
  TableRow,
  TableHead,
} from "@material-ui/core";
import React from "react";

const createData = (name, sex, age, number) => {
  return { name, sex, age, number };
};

const rows = [
  createData("Sahil", "M", 19, "9895921212"),
  createData("Sait", "M", 29, "9895921242"),
  createData("Solo", "M", 39, "9895921252"),
  createData("King", "M", 49, "9895921262"),
];

export default function ViewPatient() {
  return (
    <TableContainer component={Paper}>
      <Table aria-label="View Patient Details">
        <TableHead>
          <TableRow>
            <TableCell>Name</TableCell>
            <TableCell align="right">Sex</TableCell>
            <TableCell align="right">Age</TableCell>
            <TableCell align="right">Phone Number</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {rows.map((row) => {
            return (
              <TableRow key={row.name}>
                <TableCell component="th" scope="row">
                  {row.name}
                </TableCell>
                <TableCell align="right">{row.sex}</TableCell>
                <TableCell align="right">{row.age}</TableCell>
                <TableCell align="right">{row.number}</TableCell>
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </TableContainer>
  );
}
