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
  }
]);

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode> 
)
