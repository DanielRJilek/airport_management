import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { createBrowserRouter, RouterProvider } from "react-router"
import './styles/index.css'
// import App from './App.jsx'
import HomePage from './pages/HomePage.jsx'
import MainMenuPage from './pages/MainMenuPage.jsx'

const router = createBrowserRouter([
  {
    path: "/",
    element: <HomePage />,
  },
  {
    path: "MainMenuPage",
    element: <MainMenuPage />,
  }
]);

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode> 
)
