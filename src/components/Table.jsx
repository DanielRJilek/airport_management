import { useEffect, useState } from "react"
import '../styles/Table.css'

function Table({data}) {

    if (data == null || data.length == 0) {
        return (
            <table>
                <tbody>
                    <tr>
                        <th>Loading ...</th>
                    </tr>
                    
                </tbody>
            </table>
        )
    }

    const headers = Object.keys(data[0]);

    return (
        <table className="data-table">
            <tbody>
                <tr>
                    {headers.map((header) => (
                        <th key={header}>{header}</th>
                    ))}
                </tr>
                {data.map((item) => (
                    <tr>
                        {(Object.values(item)).map((value) => (
                            <td key={value}>{value}</td>
                        ))}
                    </tr>
                    
                ))}
                
            </tbody>
        </table>
    )
}

export default Table