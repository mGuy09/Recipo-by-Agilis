import React from "react";
import { BrowserRouter, Route, Link } from "react-router-dom";

function Categories(){
    return (
<table class="table">
  <thead>
    <tr>
      <th scope="col">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <th scope="col">Lorem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <td>Sit</td>
    </tr>
    <tr>
      <th scope="row">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
        </div>
      </th>
      <td>Adipisicing</td>
    </tr>
    <tr>
      <th scope="row">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"/>
        </div>
      </th>
      <td>Hic</td>
    </tr>
  </tbody>
</table>
    )
}

export default Categories;
