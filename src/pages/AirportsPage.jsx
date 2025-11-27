import { useState } from "react";
import {Menu} from "../components"
import {MenuOption} from "../components/MenuOption"
import Header from "../components/Header";

function AirportsPage() {
    return(
        <div className="page">
            <Header/>
            <Menu></Menu>
        </div>
    )
}

export default AirportsPage