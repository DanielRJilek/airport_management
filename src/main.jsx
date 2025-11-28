import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { createBrowserRouter, RouterProvider } from "react-router"
import './styles/index.css'
// import App from './App.jsx'
import HomePage from './pages/HomePage.jsx'
import MainMenuPage from './pages/MainMenuPage.jsx'
import AirportsPage from './pages/AirportsPage.jsx'

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
    path: "CustomersPage",
    element: <CustomersPage />,
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
