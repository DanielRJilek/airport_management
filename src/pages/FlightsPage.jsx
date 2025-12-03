import { useState } from "react";
import Menu from "../components/Menu"
import MenuOption from "../components/MenuOption"
import Header from "../components/Header";
import DataHolder from "../components/DataHolder";

function FlightsPage() {
    return(
        <div className="page">
            <Header/>
            {/* <Menu></Menu> */}
            <div className="body">
                <DataHolder endpoint={'/flight/'}/>
            </div>
            
        </div>
    )
}

export default FlightsPage