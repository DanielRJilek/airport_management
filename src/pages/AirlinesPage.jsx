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
            <div className="body">
                <DataHolder endpoint={'/airline/'}/>
            </div>
            
        </div>
    )
}

export default AirlinesPage