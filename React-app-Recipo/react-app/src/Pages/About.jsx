import React from 'react'
import { Parallax } from 'react-parallax'
import BackgroundImage from '../Images/Strawberries.jpg'

const About = () => {
    return (
        <div className=''>
            <Parallax bgImage={BackgroundImage} className='w-full flex justify-center items-center  bg-black' renderLayer={(percentage) => (
                <div
                    style={{
                        position: 'absolute',
                        width: '100%',
                        height: '100%',
                        background: `rgba(0, 0, 0, ${percentage * 0.5})`,
                    }}
                />
            )} strength={0} blur={5}>
                <div className='bg-white shadow-lg flex flex-col items-start gap-20 justify-center p-20 m-32 rounded-xl'>
                    <div className='flex flex-col gap-4'>
                    <h1 className='text-3xl font-semibold'>About Us</h1>
                    <div className='flex flex-col gap-3'>
                    
                    <p className='text-xl '>Agilis is a technology company that specializes in providing software and services for businesses of all sizes. The company's main focus is on developing innovative solutions that help companies streamline their operations and improve efficiency.</p>

                    <p className='text-xl'>Some of Agilis's key offerings include enterprise resource planning (ERP) software, customer relationship management (CRM) software, and business intelligence (BI) tools. These solutions are designed to integrate seamlessly with a company's existing systems and infrastructure, and can be customized to meet the unique needs of each business.</p>

                    <p className='text-xl'>In addition to its software offerings, Agilis also provides a wide range of consulting and implementation services to help companies get the most out of their technology investments. This includes everything from implementation planning and project management to training and ongoing support.</p>

                    <p className='text-xl'>The company was founded in 2015, since then Agilis has established itself as a leading provider of technology solutions for businesses. With a team of experienced professionals and a commitment to delivering the highest quality products and services, Agilis has helped countless companies improve their bottom line and achieve success in their respective markets.</p>
                    </div>
                    </div>
                    <div className='flex flex-col gap-4'>
                    <h1 className='text-3xl font-semibold'>About Recipo</h1>
                    <div className='flex flex-col gap-3'>
                    <p className='text-xl'>Recipo is a recipe website that helps users find delicious meals based on the ingredients they have on hand. The site's user-friendly interface allows users to select specific ingredients they want to use, and then generates a list of recipes that incorporate those ingredients.</p>

                    <p className='text-xl'>One of the unique features of Recipo is its integration with Google Maps, which allows users to quickly find nearby stores that carry the ingredients they need for a recipe. Additionally, the website also offers delivery service through Glovo, so users can have ingredients delivered straight to their home.</p>

                    <p className='text-xl'>Recipo also has a wide range of recipes, from easy weeknight dinners to more complex and gourmet meals, as well as a selection of desserts and snacks. The website is regularly updated with new recipes, and users can also submit their own recipe.</p>

                    <p className='text-xl'>Recipo was founded in 2019, since then it has become a go-to resource for home cooks of all skill levels. With its ability to find nearby stores and delivery service through Glovo and wide range of recipes, Recipo makes it easy to cook healthy and delicious meals based on the ingredients you have on hand.</p>
                    </div>
                    </div>

                </div>
            </Parallax>
        </div>
    )
}

export default About