// Your web app's Firebase configuration
const firebaseConfig = {
    apiKey: "AIzaSyDNFVmtlAgyEJIXiaFjhFN5f0GNGGQyM2I",
    authDomain: "contact-form-4b0d3.firebaseapp.com",
    databaseURL: "https://contact-form-4b0d3-default-rtdb.firebaseio.com/",
    projectId: "contact-form-4b0d3",
    storageBucket: "contact-form-4b0d3.appspot.com",
    messagingSenderId: "256542538609",
    appId: "1:256542538609:web:6bc451565a28b1603314d0",
    measurementId: "G-V4M6W1481G"
  };


  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);

  // Reference your database
  let contactFormDB = firebase.database().ref('Contact-Form');

  document.getElementById('myForm').addEventListener('submit', submitForm);

  function submitForm(e) {
    e.preventDefault();

    let name = getElementVal('fullname');
    let email = getElementVal('email');
    let mobile = getElementVal('mobile');
    let address = getElementVal('add');
    let salary = getElementVal('salary');

    saveInfo(name, email, mobile, address, salary);
  }

  // Function to push data to Firebase
  async function saveInfo  (name, email, mobile, address, salary)  {
    let newContactForm = contactFormDB.push();
    newContactForm.set({
      name: name,
      email: email,
      mobile: mobile,
      address: address,
      salary: salary
    });
  }

  // Function to get form values
  function getElementVal(id) {
    return document.getElementById(id).value;
  }