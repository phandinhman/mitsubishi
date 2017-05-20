var CarHighlight = React.createClass({

  getInitialState() { return { cars: [] } },

  componentDidMount() {
    console.log("hello");
    $.getJSON("http://localhost:3000/api/v1/cars", (response) => {this.setState({cars: response.mitsubishi.data})});
  },

  render: function () {
    var cars = this.state.cars.map(function (car, index) {
    return (
      <Car name={car.name} cost={car.cost} special_cost={car.special_cost} key={index} />
    );
  });
  return (
      <div className="product-item-slide multi-columns-row">
        {cars}
      </div>
    );
  }
});
