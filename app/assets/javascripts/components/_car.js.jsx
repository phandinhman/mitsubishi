var Car = React.createClass({
    render() {
        return (
            <div className="col-lg-3 col-md-3 col-sm-6 col-xs-6 full_width480">
              <div className="col-item">
                <div className="product-image-area">
                  <a className="product-image">
                    <img src="//bizweb.dktcdn.net/thumb/large/100/176/403/products/triton-4x2at-39665ac4-083c-455f-b864-acf7dd16dc64-43cfb037-3e6c-4fd1-91f0-932a131efc69.png?v=1487582663927"
                      className="img-responsive" alt="Mitsubishi Triton 1 cầu số sàn 4X2 MT">
                    </img>
                  </a>
                </div>
                <div className="hidden_mobile.hidden-sm.hidden-sx">
                </div>
                <div className="info">
                  <div className="info-inner">
                    <div className="item-title">
                      <h3>
                        <a title="Mitsubishi Triton 1 cầu số sàn 4X2 MT" href="/mitsubishi-triton-4x2-mt">Mitsubishi Triton 1 cầu số sàn 4X2 MT</a>
                      </h3>
                    </div>
                    <div className="item-content">
                      <div className="price-box">
                        <p className="special-price">
                          <span className="price">
                            {this.props.cost}
                          </span>
                        </p>
                        <p className="old-price">
                          <span className="price-sep">
                            {this.props.cost}
                          </span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        )
    }
});

