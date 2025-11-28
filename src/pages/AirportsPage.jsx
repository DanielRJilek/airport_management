import { useState } from "react";
import  Menu  from "../components/Menu"
import MenuOption from "../components/MenuOption"
import Header from "../components/Header";

function AirportsPage() {
    return(
        <div className="page">
            <Header/>
            {/* <Menu></Menu> */}
            <DataHolder/>
        </div>
    )
}

export default AirportsPage