import { useEffect, useState } from 'react';
import '../styles/DataDisplay.css'
import Table from './Table';

function DataDisplay({endpoint=null}) {
    const [data,setData] = useState([]);

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

    return (
        <>
            <button onClick={display}>Display Data</button>
            <div className="data-display">
                {<Table data={data}></Table>}
            </div>
        </>
        
    )
}

export default DataDisplay