import '../styles/Header.css'
import Logo from './Logo'
import {useNavigate} from 'react-router'

function Header() {
    const navigate = useNavigate();
    const logout = async () => {
        try {
            const response = await fetch('/logout', {
                method:'POST',
            });
            if (!response.ok) {
                throw new Error("Failed");
            }
            const code = await response.text();
            if (code == '1') {
                navigate('/')
            }
        } 
        catch (error) {
            console.error("Error ending connection:", err)
        }        
    }

    const home = () => {
        navigate('/MainMenuPage');
    }

    return (
        <header>
            <Logo/>
            <button id='home-button' onClick={home}>
                <img src="/src/assets/images/home.png"/>
            </button>
            <button onClick={logout}>
                
                <p>Log Out</p>
                <img src="/src/assets/images/exit.png"/>
            </button>
        </header>
    )
}

export default Header