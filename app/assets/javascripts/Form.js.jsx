var Form = React.createClass({
  render: function() {
    return (
    <div className="form-contain">
      <form acceptCharset="UTF-8" action="/nutritional" className="search-form" method="get">
      <label className="form-label "for="fruit_query">Main Fruit Ingredient</label>
      <select className="form-entry" name="fruit">
        <option selected disabled>- Please Select -</option>
        <option>Dates</option>
        <option>Goji Berries</option>
        <option>Blue Berries</option>
        <option>Starwberries</option>
        <option>Banana</option>
        <option>Raspberries</option>
        <option>Apples</option>
        <option>Pears</option>
        <option>Blackberries</option>
        <option>Plums</option>
        <option>Peaches</option>
        <option>Mango</option>
        <option>Pineapple</option>
        <option>Acai Berries</option>
        <option>Nectarines</option>
        <option>Plums</option>
      </select>
      <label className="form-label "for="veg_query">Main Veggie Ingredient</label>
      <select className="form-entry" name="veg">
        <option selected disabled>- Please Select -</option>
        <option>Kale</option>
        <option>Swiss Chard</option>
        <option>Red Beets</option>
        <option>Carrots</option>
        <option>Cucumber</option>
        <option>Spinach</option>
        <option>Watercress</option>
        <option>Arugula</option>
        <option>Celery</option>
        <option>Fennel</option>
        <option>Kelp</option>
        <option>Bok Choi</option>
        <option>Peppers</option>
      </select>
      <label className="form-label "for="liquid_query">Liquid/Base</label>
      <select className="form-entry" name="liquid">
        <option selected disabled>- Please Select -</option>
        <option>Water</option>
        <option>Almond</option>
        <option>Milk (2%)</option>
        <option>Skim Milk</option>
        <option>Soy Milk</option>
        <option>Coconut Water</option>
        <option>Apple Juice</option>
        <option>Mango Juice</option>
        <option>Berry Juice</option>
        <option>Lemon Juice</option>
        <option>Lime Juice</option>
      </select>
      <label className="form-label "for="seednut_query">Seed/Nut Ingredient</label>
      <select className="form-entry" name="seednut">
        <option selected disabled>- Please Select -</option>
        <option>Chia</option>
        <option>Flax</option>
        <option>Hemp</option>
        <option>Pumpkin</option>
        <option>Sunflower</option>
        <option>Almonds</option>
        <option>Brazil Nuts</option>
        <option>Almonds</option>
        <option>Walnuts</option>
        <option>Cacao</option>
        <option>Sachainchi</option>
      </select>
      <label className="form-label "for="herb_query">Main Herb/Flavouring Ingredient</label>
      <select className="form-entry" name="herb">
        <option selected disabled>- Please Select -</option>
        <option>Mint</option>
        <option>Basil</option>
        <option>Parsley</option>
        <option>Ginger</option>
        <option>Garlic</option>
        <option>Honey</option>
        <option>Kaffir Leaves</option>
        <option>Tumeric</option>
        <option>Lemongrass</option>
        <option>Cinnamon</option>
        <option>Lemon Juice</option>
        <option>Lime Juice</option>
        <option>Black Pepper</option>
        <option>Honey</option>
        <option>Brown Sugar</option>
        <option>Sugar</option>
      </select>
      <label className="form-label "for="protein_query">Miscellaneous</label>
      <select className="form-entry" name="miscellaneous">
        <option selected disabled>- Please Select -</option>
        <option>Soy protein powder</option>
        <option>Whey protein powder</option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
        <option></option>
      </select>
        <input className="btn-grade" type="submit" value="GRADE MY SMOOTHIE" />
      </form>
    </div>
    )
  }
})