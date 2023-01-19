// import React, { Component } from 'react';

// export class Checkout extends Component {
//   static displayName = Checkout.name;

//   render() {
//     return (
//       <div>
//         <form action="/checkoutapi" method="POST">
//           <button type="submit">Checkout</button>
//         </form>
//       </div>
//     );
//   }
// }

import React from 'react'

const Checkout = () => {
  return (
    <div>
      <form action="/checkoutapi" method="POST">
        <button type="submit">Checkout</button>
      </form>
    </div>
  )
}

export default Checkout