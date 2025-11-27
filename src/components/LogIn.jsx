import '../styles/LogIn.css'
import {useNavigate} from 'react-router'

function LogIn() {
    const navigate = useNavigate();
    const validate = async (e) => {
        e.preventDefault();
        const form = e.target;
        const formData = new FormData(form);

        try {
            const response = await fetch('/login', {
                method:'POST',
                body: formData,
            });
            if (!response.ok) {
                throw new Error("Failed");
            }
            const code = await response.text();
            if (code == '1') {
                navigate('MainMenuPage')
            }
        } 
        catch (error) {
            console.log("bad user or password")
        }
    }
    return (
        <form onSubmit={validate}>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"></input>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"></input>
            <input type="submit" value="Log In" ></input>
        </form>
    )
}

export default LogIn