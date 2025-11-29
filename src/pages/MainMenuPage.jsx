import Header from '../components/Header';
import MenuOption from '../components/MenuOption';
import Menu from '../components/Menu';

import '../styles/MainMenuPage.css'

const optionsList = [
    { name: "Flights", icon: "flights.png", page: '/FlightsPage' },
    { name: "Staff", icon: "staff.png", page: '/StaffPage' },
    { name: "Aircraft", icon: "aircraft.png", page: '/AircraftPage' },
    { name: "Passengers", icon: "passengers.png", page: '/PassengersPage' },
    { name: "Airports", icon: "airports.png", page: '/AirportsPage' },
    { name: "Airlines", icon: "airlines.png", page: '/AirlinesPage' }
]
    
function MainMenuPage() {
    return (
        <div className="page">
            <Header/>
            <Menu optionsList={optionsList}/> 
        </div>
    );
}

export default MainMenuPage