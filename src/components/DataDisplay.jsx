import { useEffect, useState } from 'react';
import '../styles/DataDisplay.css'
// import Table from './Table';

function DataDisplay({endpoint=null}) {
    const [data,setData] = useState([]);
    const [selectedRow,setSelectedRow] = useState(null);
    const [editingRow, setEditingRow] = useState(null);
    const [makingChanges, setMakingChanges] = useState(false);
    const [creatingRow, setCreatingRow] = useState(false);
    const [filteringRow, setFilteringRow] = useState(false);
    const [updatingRow, setUpdatingRow] = useState(false);
    const [deletingRow, setDeletingRow] = useState(false);
    const [action, setAction] = useState("Submit");
    const [helpMsg, setHelpMsg] = useState("");
    const [placeholderText, setPlaceholderText] = useState("");

    const handleClick = (item) => {
        setSelectedRow(item);
    }

    const deleteRow = async () => {
        setMakingChanges(true);
        setDeletingRow(true);
        setAction("Delete");
    }

    const createRow = async () => {
        setMakingChanges(true);
        setCreatingRow(true);
        setPlaceholderText("value, value, value,...");
        setAction("Create");
    }

    const updateRow = async () => {
        setMakingChanges(true);
        setUpdatingRow(true);
        setPlaceholderText("attribute, value");
        setAction("Update");
    }

    const filterRows = async () => {
        setMakingChanges(true);
        setFilteringRow(true);
        setPlaceholderText("attribute, value");
        setAction("Filter");
    }

    const reset = (e) => {
        e.target.form.reset();
    }

    const handleSubmit = async (e) => {
        e.preventDefault();
        let data = new FormData(e.target);
        console.log(data);
        switch(true) {
            case creatingRow:
                try {
                    const response = await fetch((endpoint), {
                        method: 'post',
                        body: data,
                    });
                    if (await response.text() == '1') {
                        display();
                    }
                    else {
                        setHelpMsg("Incorrect number of arguments");
                    }
                }
                catch (error) {
                    setHelpMsg(error);
                    console.error("Error: ", error)
                    
                }
                break;
            case filteringRow:
                try {
                    let field = e.target[0].value.toString();
                    if (field == "") {
                        display();
                        break;
                    }
                    console.log(field);
                    field = field.replace("`", "");
                    let dataArray = field.split(', ');
                    dataArray[1] = dataArray[1].replace(" ", "%20");
                    console.log(dataArray);
                    dataArray = dataArray.join("/");
                    const response = await fetch((endpoint + dataArray), {
                        method: 'get',
                    });
                    let data = await response.json();
                    data = data[0];
                    data = JSON.stringify(data);
                    data = JSON.parse(data);
                    setData(data);
                }
                catch (error) {
                    setHelpMsg(error);
                    console.error("Error: ", error);
                    
                }
                break;
            case updatingRow:
                try {
                    const response = await fetch((endpoint + selectedRow.id), {
                        method: 'put',
                        body: data,
                    });
                    let msg = await response.json();
                    if (msg == '1') {
                        display();
                    }
                    else {
                        setHelpMsg(msg.sqlMessage);
                    }
                }
                catch (error) {
                    setHelpMsg(error);
                    console.error("Error: ", error);
                    
                }
                break;
            case deletingRow:
                try {
                    const response = await fetch((endpoint + selectedRow.id), {
                        method: 'delete'
                    });
                    if (await response.text() == '1') {
                        // setDeletingRow(false);
                        display();
                        
                    }
                    else {
                        setHelpMsg("Incorrect number of arguments");
                    }
                }
                catch (error) {
                    setHelpMsg(error);
                    console.error("Error: ", error);
                    
                }
            default:
                break;
        }
    }

    const display = async () => {
        try {
            const response = await fetch(endpoint, {
                method:'get',
            });
            if (!response.ok) {
                setHelpMsg(error);
                throw new Error("Failed");
            }
            let data = await response.json();
            data = data[0];
            data = JSON.stringify(data);
            data = JSON.parse(data);
            setData(data);
            
        } 
        catch (error) {
            setHelpMsg(error);
            console.error("Error: ", error);
            
        }
    }

    useEffect(() => {
        const load = async () => {
            console.log(endpoint);
            try {
            const response = await fetch(endpoint, {
                method:'get',
            });
            if (!response.ok) {
                setHelpMsg("Network failure");
                throw new Error("Failed");
                
            }
            let data = await response.json();
            data = data[0];
            data = JSON.stringify(data);
            data = JSON.parse(data);
            setData(data);
            
            } 
            catch (error) {
                setHelpMsg(error);
                console.error("Error: ", error);
                
            }
        }
        load();
    }, []);

    

    if (data == null || data.length == 0) {
        return (
            <>
                <div className='table-options'>
                    <button className='create-entry' onClick={createRow}>
                        <img src="/src/assets/images/add.png"/>
                    </button>
                    <button className='update-entry' onClick={updateRow}>
                        <img src="/src/assets/images/edit.png"/>
                    </button>
                    <button className='delete-entry' onClick={deleteRow}>
                        <img src="/src/assets/images/delete.png"/>
                    </button>
                    <button className='filter-entries' onClick={filterRows}>
                        <img src="/src/assets/images/filter.png"/>
                    </button>
                    {/* <button onClick={display} className='refresh'>
                        <img src="/src/assets/images/refresh.png"/>
                    </button> */}
                </div>
                <div className='help'>
                        <p className='help'>{helpMsg}</p>
                </div>
                <div className="data-display">
                    <table className='data-table'>
                        <tbody>
                            <tr>
                                <th>Loading ...</th>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </>
        )
    }

    const headers = Object.keys(data[0]);

    return (
        <>
            <div className='table-options'>
                <button className='create-entry' onClick={createRow}>
                    <img src="/src/assets/images/add.png"/>
                </button>
                <button className='update-entry' onClick={updateRow}>
                    <img src="/src/assets/images/edit.png"/>
                </button>
                <button className='delete-entry' onClick={deleteRow}>
                    <img src="/src/assets/images/delete.png"/>
                </button>
                <button className='filter-entries' onClick={filterRows}>
                    <img src="/src/assets/images/filter.png"/>
                </button>
                {/* <button onClick={display} className='refresh'>
                    <img src="/src/assets/images/refresh.png"/>
                </button> */}
            </div>
            <div className='help'>
                <p>{helpMsg}</p>        
            </div>
            <div className={`user-input ${makingChanges ? "": "hidden"}`}>
                <form onSubmit={handleSubmit}>
                    <input type="text" id="data" name="data" placeholder={placeholderText}></input>
                    <input type="submit" value={action}></input>
                    <button type="button" onClick={reset} >Reset</button>
                </form>
                

            </div>
            <div className="data-display">
                <table className="data-table">
                    <tbody>
                        <tr id='header-row'>
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