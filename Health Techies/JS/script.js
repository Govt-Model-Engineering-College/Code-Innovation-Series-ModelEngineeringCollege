let button = document.querySelector('button')

let qrcode = new QRCode(document.querySelector('#qrcode'), {
    text: "Alexa Mary Health Id :4936 2397 1221",
    width: 200,
    height: 200,
    colorDark : "#000000",
    colorLight : "#f2e9be",
    correctLevel : QRCode.CorrectLevel.H
});

button.addEventListener('click', () => {
    let inputvalue = 'Alexa Mary Health Id :4936 2397 1221'
    qrcode.makeCode(inputvalue);
})
