// ------------------ References ------------------
const outputEl = document.getElementById("output");

const loadBtn = document.getElementById("loadIphonesBtn");
const dumpBtn = document.getElementById("dumpIphonesBtn");
const loadJsonBtn = document.getElementById("loadIphonesJsonBtn");
const createIphoneBtn = document.getElementById("createIphoneBtn");
const deleteIphoneBtn = document.getElementById("deleteIphoneBtn");

const loadComponentsBtn = document.getElementById("loadComponentsBtn");
const createComponentBtn = document.getElementById("createComponentBtn");

const iphoneSelect = document.getElementById("iphoneSelect");

// ------------------ API URLs ------------------
const API_BASE = "http://localhost:8080/iphones";
const COMPONENT_BASE = "http://localhost:8080/components";

// ------------------ Functions ------------------

// 1️⃣ Load all iPhones
function getIphones() {
    outputEl.textContent = "Loading iPhones...";
    fetch(API_BASE)
        .then(res => res.json())
        .then(data => {
            outputEl.textContent = JSON.stringify(data, null, 2);

            // Populate dropdown
            iphoneSelect.innerHTML = '<option value="">--Select an iPhone--</option>';
            data.forEach(iphone => {
                const option = document.createElement("option");
                option.value = iphone.id;
                option.textContent = iphone.name || `iPhone ${iphone.id}`;
                iphoneSelect.appendChild(option);
            });
        })
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 2️⃣ Load components for selected iPhone
function getComponentsByIphone(iphoneId) {
    if (!iphoneId) return;
    outputEl.textContent = "Loading components...";
    fetch(`${COMPONENT_BASE}/iphone/${iphoneId}`)
        .then(res => res.json())
        .then(data => {
            outputEl.textContent = JSON.stringify(data, null, 2);
        })
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 3️⃣ Dump iPhones to JSON
function dumpIphones() {
    outputEl.textContent = "Dumping iPhones to JSON...";
    fetch(`${API_BASE}/dump/json`)
        .then(res => res.text())
        .then(msg => outputEl.textContent = msg)
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 4️⃣ Load iPhones from JSON
function loadIphones() {
    outputEl.textContent = "Loading iPhones from JSON...";
    fetch(`${API_BASE}/load/json`)
        .then(res => res.text())
        .then(msg => {
            outputEl.textContent = msg;
            getIphones(); // refresh iPhone list
        })
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 5️⃣ Create a new iPhone (simple example with prompt)
function createIphone() {
    const name = prompt("Enter iPhone name:");
    if (!name) return;

    fetch(API_BASE, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name })
    })
    .then(res => res.json())
    .then(data => {
        outputEl.textContent = "Created iPhone:\n" + JSON.stringify(data, null, 2);
        getIphones(); // refresh list
    })
    .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 6️⃣ Delete selected iPhone
function deleteIphone() {
    const id = iphoneSelect.value;
    if (!id) return alert("Select an iPhone to delete.");

    fetch(`${API_BASE}/${id}`, { method: "DELETE" })
        .then(() => {
            outputEl.textContent = `Deleted iPhone with ID ${id}`;
            getIphones(); // refresh list
        })
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 7️⃣ Load all components
function getAllComponents() {
    outputEl.textContent = "Loading all components...";
    fetch(COMPONENT_BASE)
        .then(res => res.json())
        .then(data => outputEl.textContent = JSON.stringify(data, null, 2))
        .catch(err => outputEl.textContent = "Error: " + err.message);
}

// 8️⃣ Create a new component (prompt for name and iPhone ID)
function createComponent() {
    const name = prompt("Enter Component name:");
    const iphoneId = prompt("Enter iPhone ID to attach this component:");
    if (!name || !iphoneId) return;

    fetch(COMPONENT_BASE, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name, iphone: { id: parseInt(iphoneId) } })
    })
    .then(res => res.json())
    .then(data => {
        outputEl.textContent = "Created Component:\n" + JSON.stringify(data, null, 2);
    })
    .catch(err => outputEl.textContent = "Error: " + err.message);
}

// ------------------ Event Listeners ------------------
loadBtn.addEventListener("click", getIphones);
dumpBtn.addEventListener("click", dumpIphones);
loadJsonBtn.addEventListener("click", loadIphones);
createIphoneBtn.addEventListener("click", createIphone);
deleteIphoneBtn.addEventListener("click", deleteIphone);

loadComponentsBtn.addEventListener("click", getAllComponents);
createComponentBtn.addEventListener("click", createComponent);

iphoneSelect.addEventListener("change", () => {
    const id = iphoneSelect.value;
    if (id) getComponentsByIphone(id);
});
