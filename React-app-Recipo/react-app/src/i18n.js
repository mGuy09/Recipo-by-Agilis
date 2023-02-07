import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
    // detect user language
    .use(LanguageDetector)
    // pass the i18n instance to react-i18next.
    .use(initReactI18next)
    // init i18next
    .init({
        debug: true,
        fallbackLng: 'en',
        interpolation: {
            escapeValue: false, // not needed for react as it escapes by default
        },
        resources: {
            en: {
                translation: {
                    description: {
                        about0: "About Us",
                        about1: "Some of Agilis's key offerings include enterprise resource planning(ERP) software, customer relationship management(CRM) software, and business intelligence(BI) tools.These solutions are designed to integrate seamlessly with a company's existing systems and infrastructure, and can be customized to meet the unique needs of each business.",
                        about2: "In addition to its software offerings, Agilis also provides a wide range of consulting and implementation services to help companies get the most out of their technology investments. This includes everything from implementation planning and project management to training and ongoing support.",
                        about3: "The company was founded in 2015, since then Agilis has established itself as a leading provider of technology solutions for businesses. With a team of experienced professionals and a commitment to delivering the highest quality products and services, Agilis has helped countless companies improve their bottom line and achieve success in their respective markets.",
                        recipo0: "About Recipo",
                        recipo1: "Recipo is a recipe website that helps users find delicious meals based on the ingredients they have on hand. The site's user-friendly interface allows users to select specific ingredients they want to use, and then generates a list of recipes that incorporate those ingredients.",
                        recipo2: "One of the unique features of Recipo is its integration with Google Maps, which allows users to quickly find nearby stores that carry the ingredients they need for a recipe. Additionally, the website also offers delivery service through Glovo, so users can have ingredients delivered straight to their home.",
                        recipo3: "Recipo also has a wide range of recipes, from easy weeknight dinners to more complex and gourmet meals, as well as a selection of desserts and snacks. The website is regularly updated with new recipes, and users can also submit their own recipe.",
                        recipo4: "Recipo was founded in 2019, since then it has become a go-to resource for home cooks of all skill levels. With its ability to find nearby stores and delivery service through Glovo and wide range of recipes, Recipo makes it easy to cook healthy and delicious meals based on the ingredients you have on hand.",
                        contact0: "Want to get in touch?",
                        contact1: "Your name",
                        contact2: "Send message",
                        recipe0: "Next",
                        recipe1: "Reset",
                        recipe2: "Step 1 - Recipe Title",
                        recipe3: "Ingredients",
                        recipe4: "Method",
                        recipe5: "Step",
                        recipe6: "Submit Recipe",
                        subs0: "Monthly",
                        subs1: "Recurring payment monthly for Recipo Premium",
                        subs2: "Have access to all free and premium recipes.",
                        subs3: "Premium users have the ability to add new recipes.",
                        subs4: "Price:",
                        subs5: "Yearly",
                        subs6: "Recurring payment yearly for Recipo Premium",
                        subs7: "Exactly the same as for Monthly.",


                    }
                }
            },
            ro: {
                translation: {
                    description: {
                        about0: "Despre Noi",
                        about1: "Unele dintre ofertele cheie ale Agilis includ software de planificare a resurselor întreprinderii (ERP), software de management al relațiilor cu clienții (CRM) și instrumente de business intelligence (BI). Aceste soluții sunt concepute pentru a se integra perfect cu sistemele și infrastructura existente ale unei companii și pot fi personalizate pentru satisface nevoile unice ale fiecărei afaceri.",
                        about2: "Pe lângă ofertele sale de software, Agilis oferă și o gamă largă de servicii de consultanță și implementare pentru a ajuta companiile să profite la maximum de investițiile lor în tehnologie. Aceasta include totul, de la planificarea implementării și managementul proiectelor până la formare și asistență continuă.",
                        about3: "Compania a fost fondată în 2015, de atunci Agilis s-a impus ca furnizor de top de soluții tehnologice pentru afaceri. Cu o echipă de profesioniști cu experiență și angajamentul de a oferi produse și servicii de cea mai înaltă calitate, Agilis a ajutat nenumărate companii să-și îmbunătățească profitul și să obțină succes pe piețele respective.",
                        recipo0: "Despre Recipo",
                        recipo1: "Recipo este un site de rețete care îi ajută pe utilizatori să găsească mâncăruri delicioase pe baza ingredientelor pe care le au la îndemână. Interfața prietenoasă a site-ului permite utilizatorilor să selecteze anumite ingrediente pe care doresc să le folosească și apoi generează o listă de rețete care încorporează acele ingrediente.",
                        recipo2: "Una dintre caracteristicile unice ale Recipo este integrarea sa cu Google Maps, care permite utilizatorilor să găsească rapid magazinele din apropiere care dețin ingredientele de care au nevoie pentru o rețetă. În plus, site-ul oferă și serviciu de livrare prin Glovo, astfel încât utilizatorii să poată primi ingredientele direct la domiciliu.",
                        recipo3: "Recipo are, de asemenea, o gamă largă de rețete, de la cine ușoare de noapte până la mese mai complexe și gourmet, precum și o selecție de deserturi și gustări. Site-ul web este actualizat în mod regulat cu rețete noi, iar utilizatorii își pot trimite și propria rețetă.",
                        recipo4: "Recipo a fost fondată în 2019, de atunci a devenit o resursă de preferat pentru bucătarii de acasă de toate nivelurile de calificare. Cu capacitatea sa de a găsi magazine din apropiere și serviciul de livrare prin Glovo și o gamă largă de rețete, Recipo face ușor să gătești mâncăruri sănătoase și delicioase pe baza ingredientelor pe care le ai la îndemână.",
                        contact0: "Contacteaza-ne",
                        contact1: "Numele tau",
                        contact2: "Trimite mesaj",
                        recipe0: "Urmatorul",
                        recipe1: "Reseteaza",
                        recipe2: "Pasul 1 - Titlul Retetei",
                        recipe3: "Ingrediente",
                        recipe4: "Metoda",
                        recipe5: "Pas",
                        recipe6: "Trimite Reteta",
                        subs0: "Lunar",
                        subs1: "Plata lunara recurenta pentru Recipo Premium",
                        subs2: "Ai acces la toate retetele gratis si premium.",
                        subs3: "Utilizatorii Premium pot adauda retete proprii",
                        subs4: "Pret:",
                        subs5: "Anual",
                        subs6: "Plata anuala recurenta pentru Recipo Premium",
                        subs7: "Exact la fel ca abonamentul lunar"


                    }
                }
            }
        }
    });

export default i18n;