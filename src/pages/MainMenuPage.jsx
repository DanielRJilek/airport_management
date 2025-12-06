import Header from '../components/Header';
import MenuOption from '../components/MenuOption';
import Menu from '../components/Menu';

import '../styles/MainMenuPage.css'

const optionsList = [
    { name: "Flights", icon: "flights.png", page: '/FlightsPage', id: crypto.randomUUID() },
    { name: "Staff", icon: "staff.png", page: '/StaffPage', id: crypto.randomUUID() },
    { name: "Aircraft", icon: "aircraft.png", page: '/AircraftPage', id: crypto.randomUUID() },
    { name: "Passengers", icon: "passengers.png", page: '/PassengersPage', id: crypto.randomUUID() },
    { name: "Airports", icon: "airports.png", page: '/AirportsPage', id: crypto.randomUUID() },
    { name: "Airlines", icon: "airlines.png", page: '/AirlinesPage', id: crypto.randomUUID()},
    { name: "Seats", icon: "airlines.png", page: '/SeatPage', id: crypto.randomUUID()},
    { name: "Meals", icon: "airlines.png", page: '/MealPage', id: crypto.randomUUID()},
    { name: "Terminals", icon: "airlines.png", page: '/TerminalPage', id: crypto.randomUUID()},
    { name: "Baggage", icon: "airlines.png", page: '/BaggagePage', id: crypto.randomUUID()}
]
    
function MainMenuPage() {
    return (
        <div className="page">
            <Header/>
            <div className='body'>
                <Menu optionsList={optionsList}/>
            </div>
             
        </div>
    );
}

export default MainMenuPage