import Logo from "../components/Logo";
import LogIn from "../components/LogIn";
import { useState } from "react";
import '../styles/HomePage.css'

function HomePage() {
    return (
        <div className="page">
            <Logo/>
            <LogIn/>
        </div>
    );
}

export default HomePage