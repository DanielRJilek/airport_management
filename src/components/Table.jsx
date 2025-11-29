import { useEffect, useState } from "react"
import '../styles/Table.css'

function Table({data}) {
    const [selectedRow,setSelectedRow] = useState(null);

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

    const handleClick = (item) => {
        setSelectedRow(item);
    }

    return (
        <table className="data-table">
            <tbody>
                <tr>
                    {headers.map((header) => (
                        <th key={header}>{header}</th>
                    ))}
                </tr>
                {data.map((item) => (
                    <tr onClick={() => handleClick(item)} className={item==selectedRow ? "selected-row": ""}>
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