import '../styles/MenuOption.css'

function MenuOption({page=null, name, icon=null}) {
    const path = '/src/assets/images/' + icon
    return (
        <div className="menu-option">
            <img src= {path} />
            <a href={page}> {name} </a>
        </div>
    )
}

export default MenuOption