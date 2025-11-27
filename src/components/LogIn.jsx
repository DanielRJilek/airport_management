import '../styles/LogIn.css'

function LogIn() {
    return (
        <form>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"></input>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"></input>
            <input type="submit" value="Log In" ></input>
        </form>
    )
}

export default LogIn