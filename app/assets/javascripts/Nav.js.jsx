var Nav = React.createClass({
  render: function() {
    return (
      <header className="site-header">
        <a href="https://smoothieveggies.com">
          <img className="site-logo" src="https://smoothieveggies.com/wp-content/uploads/2015/07/sv_logo_white.png" />
        </a>
        <div className="btn-menu">
          <nav>
            <ul id="nav-buttons">
              <a href="https://smoothieveggies.com/our-story/" className="dropdown"><li>About</li></a>
              <a href="https://smoothieveggies.com/faqs/"><li>FAQs</li></a>
              <a href="https://smoothieveggies.com/recipes/"><li>Recipes</li></a>
              <a href="/work"><li>Contact</li></a>
              <a href="https://smoothieveggies.com/hibernation/"><li>Order</li></a>
            </ul>
          </nav>
        </div>
      </header>
    )
  }
})