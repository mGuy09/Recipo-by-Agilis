import React from "react";
import { BrowserRouter, Route, Link } from "react-router-dom";

function Categories(){
    return (
<table className="table">
  <thead>
    <tr>
      <th scope="col">
        <div className="form-check">
          <input className="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <th scope="col">Lorem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div className="form-check">
          <input className="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <td>Sit</td>
    </tr>
    <tr>
      <th scope="row">
        <div classNaem="form-check">
          <input className="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <td>Adipisicing</td>
    </tr>
    <tr>
      <th scope="row">
        <div classname="form-check">
          <input className="form-check-input" type="checkbox" value="" id="flexCheckDefault"/>
        </div>
      </th>
      <td>Hic</td>
    </tr>
  </tbody>
</table>
    )
}

export default Categories;
