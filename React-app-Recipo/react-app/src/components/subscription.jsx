
import React from 'react'
import ReactDOM from 'react-dom';
import Card from './card'


const Subscription = ({ isShowing, hide }) => isShowing ? ReactDOM.createPortal(
    <React.Fragment>
        <button type="button" className="modal-close-button" data-dismiss="modal" aria-label="Close" onClick={hide}>
            <span aria-hidden="true">
                <Card />
                Close&times;
            </span>
        </button>
    </React.Fragment>, document.body
) : null;

export default Subscription;