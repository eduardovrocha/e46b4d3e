import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Dashboard from "../components/Dashboard";

export default (
    <Router>
        <Routes>
            <Route path="/dashboard" element={<Dashboard />}></Route>
            <Route path="/home" element={<Home />}></Route>
            <Route path="/" element={<Home />}></Route>
        </Routes>
    </Router>
);