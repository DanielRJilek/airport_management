import Logo from "../components/Logo";
import LogIn from "../components/LogIn";
import '../styles/HomePage.css'

function HomePage() {
    return (
        <div className="page">
            <Logo/>
            <LogIn/>
        </div>
    );
}

export default HomePage