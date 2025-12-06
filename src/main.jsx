import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { createBrowserRouter, RouterProvider } from "react-router"
import './styles/index.css'
// import App from './App.jsx'
import HomePage from './pages/HomePage.jsx'
import MainMenuPage from './pages/MainMenuPage.jsx'
import AirportsPage from './pages/AirportsPage.jsx'
import PassengersPage from './pages/PassengersPage.jsx'
import StaffPage from './pages/StaffPage.jsx'
import AircraftPage from './pages/AircraftPage.jsx'
import FlightsPage from './pages/FlightsPage.jsx'
import AirlinesPage from './pages/AirlinesPage.jsx'
import SeatPage from './pages/SeatPage.jsx'
import MealPage from './pages/MealPage.jsx'
import TerminalPage from './pages/TerminalPage.jsx'
import BaggagePage from './pages/BaggagePage.jsx'

const router = createBrowserRouter([
  {
    path: "/",
    element: <HomePage />,
  },
  {
    path: "MainMenuPage",
    element: <MainMenuPage />,
  },
  {
    path: "AirportsPage",
    element: <AirportsPage />,
  },
  {
    path: "StaffPage",
    element: <StaffPage />,
  },
  {
    path: "PassengersPage",
    element: <PassengersPage />,
  },
  {
    path: "AircraftPage",
    element: <AircraftPage />,
  },
  {
    path: "FlightsPage",
    element: <FlightsPage />,
  },
  {
    path: "AirlinesPage",
    element: <AirlinesPage />,
  },
  {
    path: "SeatPage",
    element: <SeatPage />,
  },
  {
    path: "MealPage",
    element: <MealPage />,
  },
  {
    path: "TerminalPage",
    element: <TerminalPage />,
  },
  {
    path: "BaggagePage",
    element: <BaggagePage />,
  },
]);

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode> 
)
