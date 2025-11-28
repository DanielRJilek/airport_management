import '../styles/Menu.css'
import MenuOption from './MenuOption'

function Menu() {
    return (
        <div className='menu'>
            <MenuOption name="Flights" icon="flights.png" />
            <MenuOption name="Staff" icon="staff.png" page='/StaffPage'/>
            <MenuOption name="Aircraft" icon="aircraft.png" page='/AircraftPage'/>
            <MenuOption name="Passengers" icon="passengers.png" page='/PassengersPage'/>
            <MenuOption name="Airports" icon="airports.png" page='/AirportsPage'/>
            <MenuOption name="Airlines" icon="airlines.png" />
        </div>
    )
}

export default Menu