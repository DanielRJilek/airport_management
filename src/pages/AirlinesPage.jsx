import DataHolder from "../components/DataHolder";
import { useState } from "react";
import Menu from "../components/Menu"
import MenuOption from "../components/MenuOption"
import Header from "../components/Header";

function AirlinesPage() {
    return(
        <div className="page">
            <Header/>
            {/* <Menu></Menu> */}
            <DataHolder/>
        </div>
    )
}

export default AirlinesPage