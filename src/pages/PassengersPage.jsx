import { useState } from "react";
import  Menu  from "../components/Menu"
import MenuOption from "../components/MenuOption"
import Header from "../components/Header";
import DataHolder from "../components/DataHolder";

function CustomersPage() {
    return(
        <div className="page">
            <Header/>
            {/* <Menu></Menu> */}
            <DataHolder/>
        </div>
    )
}

export default CustomersPage