import React from 'react';
import Overview from "./pages/Overview/Overview";
import Navbar from "./components/Navbar"
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

function App(){
  return(
    <Router>
      <div className="App">
        <Switch>
          <Route path = "/">
            <Navbar/>
            <Overview/>
          </Route>
        </Switch>
      </div>
    </Router>
  )
}

export default App;
