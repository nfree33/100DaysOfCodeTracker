import React from 'react';

function NavBar(props) {
    let navBarItems = [
        <li key={1}>
            <a href="/">Home</a>
        </li>,
        <li key={2}>
            <a href="/commishreport">Commish Report</a>
        </li>
    ]
    return (
        <>
            <nav>
                <ul>{navBarItems}</ul>
            </nav>
        </>
    )
}

export default NavBar;