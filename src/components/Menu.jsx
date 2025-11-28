import '../styles/Menu.css'
import MenuOption from './MenuOption'

function Menu() {
    return (
        <div className='menu'>
            <MenuOption name="Flights" icon="flights.png" />
            <MenuOption name="Staff" icon="staff.png" />
            <MenuOption name="Aircraft" icon="aircraft.png" />
            <MenuOption name="Passengers" icon="passengers.png" />
            <MenuOption name="Airports" icon="airports.png" page='/AirportsPage'/>
            <MenuOption name="Airlines" icon="airlines.png" />
        </div>
    )
}

export default Menu