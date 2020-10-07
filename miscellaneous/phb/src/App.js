import React, { useState, useEffect } from "react";
import { Route, Switch } from "react-router-dom";
import CommishReport from "./components/CommishReport/CommishReport";
import NavBar from "./components/NavBar/NavBar"
import HomeScreen from "./components/HomeScreen/HomeScreen"
import Teams from "./components/Teams/Teams"


function App() {
  return (
    <div className="App">
      <NavBar />
      <div className="body">
        <Switch>
          <Route
            path="/commishreport"
            render={(props) => {
              return (
                <CommishReport />
              )
            }}
          />
          <Route
            path="/teams"
            render={() => {
              return <Teams
              // isLoggedIn={isLoggedIn}
              // handleInput={handleInput}
              // handleLogIn={handleLogIn}
              />;
            }}
          />
          <Route
            path="/"
            render={() => {
              return <HomeScreen
              // isLoggedIn={isLoggedIn}
              // handleInput={handleInput}
              // handleLogIn={handleLogIn}
              />;
            }}
          />
        </Switch>
        {/* <h2><a href="/commishreport">Stay up to date</a></h2> */}
      </div>
    </div>
  );
}

export default App;
