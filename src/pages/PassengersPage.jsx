import { useState } from "react";
import  Menu  from "../components/Menu"
import MenuOption from "../components/MenuOption"
import Header from "../components/Header";

function CustomersPage() {
    return(
        <div className="page">
            <Header/>
            <Menu></Menu>
        </div>
    )
}

export default CustomersPage