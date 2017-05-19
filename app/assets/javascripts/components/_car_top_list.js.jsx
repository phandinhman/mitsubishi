var CarTopList = React.createClass({
    render: function () {
        var cars =    this.props.data.map(function (car, index) {
       return (
       <Car name={car.name} cost={car.description} key={index} />
       );
   });
   return (
         <div className="product-item-slide multi-columns-row">
           {cars}
         </div>
     );
    }
});
