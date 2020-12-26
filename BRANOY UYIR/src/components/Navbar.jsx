import React from "react";
import "./Navbar.css";
import { Navbar, Nav } from 'react-bootstrap';
import { GiHamburgerMenu} from "react-icons/gi"
import {BiSearch} from "react-icons/bi";
import {CgProfile} from "react-icons/cg";
import {BsMoon} from "react-icons/bs";

function Navigation() {
 return(
 <div className = " navbarone container-fluid">
 <Navbar bg="light" variant="light">

    <Nav className="mr-auto">
    <GiHamburgerMenu className = "hamburgermenu" style={{color: "#bfbfbf", fontSize: "1.5rem"}}/>
      <Nav.Link className = "overview" href="#Overview">OVERVIEW</Nav.Link>
      <Nav.Link className = "pathways" href="#Pathways">PATHWAYS</Nav.Link>
      <Nav.Link className = "hackathons" href="#Hackathons">HACKATHONS</Nav.Link>
    <BiSearch className = "search" style ={{color: "#bfbfbf", fontSize: "1.5rem"}}/>
    <CgProfile className = "profile" style ={{color: "#bfbfbf", fontSize: "2rem"}}/>
    <BsMoon className = "moon" style ={{color: "#bfbfbf", fontSize: "1.3rem"}}/>
    </Nav>

  </Navbar>
 </div>)
}

export default Navigation;