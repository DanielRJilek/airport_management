import '../styles/MenuOption.css'

function MenuOption({page=null, name, icon=null}) {
    const path = '/src/assets/images/' + icon
    return (
        <div className="menu-option">
            <a href={page}> {name} </a>
            <img src= {path} />
        </div>
    )
}

export default MenuOption