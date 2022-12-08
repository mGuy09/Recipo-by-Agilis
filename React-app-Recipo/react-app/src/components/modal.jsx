import React, { useState } from 'react';
import Modal from 'react-modal';
import Card from './card';


function ModalInFunctionalComponent() {

    const [modalIsOpen, setModalIsOpen] = useState(false);

    const setModalIsOpenToTrue = () => {
        setModalIsOpen(true)
    }

    const setModalIsOpenToFalse = () => {
        setModalIsOpen(false)
    }

    return (
        <>
            <a href='#' onClick={setModalIsOpenToTrue}>Subscription</a>

            <Modal isOpen={modalIsOpen}>
                <button onClick={setModalIsOpenToFalse}>x</button>
                <Card />
            </Modal>
        </>
    )
}
export default ModalInFunctionalComponent;