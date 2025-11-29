import '../styles/DataHolder.css'
import DataDisplay from './DataDisplay'

function DataHolder({endpoint=null}) {
    return (
        <div className="data-holder">
            <DataDisplay endpoint={endpoint}/>
        </div>
    )
}

export default DataHolder