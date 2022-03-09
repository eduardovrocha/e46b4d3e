import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Dashboard from "../components/Dashboard";
import Resource from "../components/Resource";
import ResourceField from "../components/ResourceField";
import ResourceAction from "../components/ResourceAction";

export default (
    <Router>
        <Routes>
            <Route path="/" element={<Home />}></Route>
            <Route path="/home" element={<Home />}></Route>
            <Route path="/home/resources" element={<Resource />}></Route>
            <Route path="/home/resource_fileds" element={<ResourceField />}></Route>
            <Route path="/home/resource_actions" element={<ResourceAction />}></Route>
            <Route path="/dashboard" element={<Dashboard />}></Route>
            <Route path="/dashboard/resources" element={<Resource />}></Route>
            <Route path="/dashboard/resource_fields" element={<ResourceField />}></Route>
            <Route path="/dashboard/resource_actions" element={<ResourceAction />}></Route>
        </Routes>
    </Router>
);