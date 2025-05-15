import { CapacitorStoreCountry } from 'capacitor-store-country';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CapacitorStoreCountry.echo({ value: inputValue })
}
