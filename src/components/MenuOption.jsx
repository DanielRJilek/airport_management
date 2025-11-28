import '../styles/MenuOption.css'
import {useNavigate} from 'react-router'

function MenuOption({page=null, name, icon=null}) {
    const navigate = useNavigate();
    const path = '/src/assets/images/' + icon
    const goto = () => navigate(page);
    return (
        <button className="menu-option" onClick={goto}>
            <p> {name} </p>
            <img src= {path} />
        </button>
    )
}

export default MenuOption