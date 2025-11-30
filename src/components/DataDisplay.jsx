import { useEffect, useState } from 'react';
import '../styles/DataDisplay.css'
import Table from './Table';

function DataDisplay({endpoint=null}) {
    const [data,setData] = useState([]);
    const [selectedRow,setSelectedRow] = useState(null);
    const [editingRow, setEditingRow] = useState(null);

    const display = async () => {
        try {
            const response = await fetch(endpoint, {
                method:'get',
            });
            if (!response.ok) {
                throw new Error("Failed");
            }
            let data = await response.json();
            data = data[0];
            data = JSON.stringify(data);
            data = JSON.parse(data);
            setData(data);
            
        } 
        catch (error) {
            console.error("Error: ", error)
        }
    }

    useEffect(() => {
        const load = async () => {
            try {
            const response = await fetch(endpoint, {
                method:'get',
            });
            if (!response.ok) {
                throw new Error("Failed");
            }
            let data = await response.json();
            data = data[0];
            data = JSON.stringify(data);
            data = JSON.parse(data);
            setData(data);
            
            } 
            catch (error) {
                console.error("Error: ", error)
            }
        }
        
        load();
    }, []);

    

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

    const deleteRow = async () => {
        try {
            const response = await fetch((endpoint + "/" + selectedRow.id), {
                method: 'delete'
            });
            if (await response.text() == '1') {
                display();
            }
        }
        catch (error) {
            console.error("Error: ", error)
        }
    }

    return (
        <>
            <div className='table-options'>
                <button className='create-entry'>
                    <img src="/src/assets/images/add.png"/>
                </button>
                <button className='update-entry'>
                    <img src="/src/assets/images/edit.png"/>
                </button>
                <button className='delete-entry' onClick={deleteRow}>
                    <img src="/src/assets/images/delete.png"/>
                </button>
                <button className='filter-entries'>
                    <img src="/src/assets/images/filter.png"/>
                </button>
                {/* <button onClick={display} className='refresh'>
                    <img src="/src/assets/images/refresh.png"/>
                </button> */}
            </div>
            <div className="data-display">
                <table className="data-table">
                    <tbody>
                        <tr>
                            {headers.map((header) => (
                                <th key={header}>{header}</th>
                            ))}
                        </tr>
                        {data.map((item) => (
                            <tr onClick={() => handleClick(item)} className={`${item==selectedRow ? "selected-row": ""} ${item==editingRow ? "editing-row": ""}`}>
                                {(Object.values(item)).map((value) => (
                                    <td key={value}>{value}</td>
                                ))}
                            </tr>
                            
                        ))}
                        
                    </tbody>
                </table>
            </div>
        </>
        
    )
}

export default DataDisplay