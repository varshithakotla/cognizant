console.log("welcome to the community portal");

window.onload=function(){
    alert("page has been fully loaded");
}

const Eventname="community event";
const date="2026-05-28";
let seats=50;

console.log(`event : ${Eventname}
    date : ${date}
    seats : ${seats}`);

    seats++;
    console.log(`seats available before registration: ${seats}`);

    seats--;
     console.log(`seats available after registration: ${seats}`);

const events= [
    {
        name: "play area",
        date: "2026-05-31",
        seats: 20
    },
    {
        name :" music festival",
        date:" 2026-06-02",
        seats: 50
    },
    {
        name: "sports meet",
        date: "2026-06-10",
        seats: 60
    }];

    console.log("display only valid events");
    const today=new Date();
    events.forEach(event=>{
            const evenDate = new Date(event.date);
if(eventDate >= today && event.seats>0){
    console.log(`events : ${event.name}
    date : ${event.date}
    seats : ${event.seats}`);

}
else{
    console.log(`${event.name} is unavailable.`);
}   }   );

function RegistrationEvent(event) {
    try {
        if (event.seats <= 0) {
            throw new Error("No seats available");
        }

        event.seats--;

     console.log(`Successfully registered for ${event.name},
Remaining seats: ${event.seats}`);

    } catch (error) {
        console.log("Registration Error: " + error.message);
    }
}
RegistrationEvent(events[0]);
RegistrationEvent(events[2]);

function addEvent(name,category,date, seats){
    events.push({
        name:name,
        category:category,
        date:date,
        seats:seats
    });
    console.log(`${name}added successfully`);
}

function registerUser(eventName){
    const event=events.find(e=>e.name === eventName);
    if(event && events.seats>0){
        event.seats--;
        console.log(`user registered for ${event.name}.remaining seats: ${event.seats}`);
    }
    else{
        console.log("registration failed");
    }
}

function filterEventsByCategory(category, callback) {
    const filteredEvents = events.filter(
        event => event.category === category
    );

    callback(filteredEvents);
}

function createRegistrationTracker(category) {
    let totalRegistrations = 0;
    return function () {
        totalRegistrations++;

        console.log(
            `${category} registrations: ${totalRegistrations}`
        );
    };
}

class Event {
    constructor(name, category, date, seats) {
        this.name = name;
        this.category = category;
        this.date = date;
        this.seats = seats;
    }
}

Event.prototype.checkAvailability = function () {
    if (this.seats > 0) {
        console.log(`${this.name} is available. Seats left: ${this.seats}`);
    } else {
        console.log(`${this.name} is full.`);
    }
};

const event1 = new Event(
    "Play Area",
    "Sports",
    "2026-05-31",
    20
);

const event2 = new Event(
    "Music Festival",
    "Entertainment",
    "2026-06-02",
    0
);

event1.checkAvailability();
event2.checkAvailability();

console.log("Event 1 Details:");

Object.entries(event1).forEach(([key, value]) => {
    console.log(`${key}: ${value}`);
});

document
.getElementById("registrationForm")
.addEventListener("submit", function(event){

    event.preventDefault();
    const form = event.target;

    const username =
        form.elements["username"].value;

    const email =
        form.elements["email"].value;

    const selectedEvent =
        form.elements["event"].value;

    let valid = true;
    if(username === ""){

        document.getElementById(
            "nameError"
        ).textContent = "Name required";

        valid = false;
    }

    if(email === ""){
        document.getElementById(
            "emailError"
        ).textContent = "Email required";

        valid = false;
    }
    if(valid){
        console.log(username,email,selectedEvent);
    }
});

function submitRegistration(userData){

    setTimeout(() => {

        fetch(
            "https://jsonplaceholder.typicode.com/posts",
            {
                method: "POST",
                headers: {
                    "Content-Type":
                    "application/json"
                },
                body: JSON.stringify(userData)
            }
        )

        .then(response => response.json())

        .then(data => {

            document.getElementById(
                "message"
            ).textContent =
            "Registration Successful";

            console.log(data);
        })

        .catch(error => {
            document.getElementById(
                "message"
            ).textContent =
            "Registration Failed";
            console.log(error);
        });
    }, 2000);
}

console.log("Form Submitted");
console.log("User Name:", username);
console.log("Email:", email);
console.log("Selected Event:", selectedEvent);
$("#registerBtn").click(function(){

    alert("Registered Successfully");

});
$("#eventCard").fadeOut();
$("#eventCard").fadeIn();



