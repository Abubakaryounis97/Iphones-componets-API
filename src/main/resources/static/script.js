const API_BASE = "http://localhost:8080";

// ---------- iPhone Functions ----------
async function getAllIphones() {
    const res = await fetch(`${API_BASE}/iphones`);
    const iphones = await res.json();
    displayIphones(iphones);
}

function displayIphones(iphones) {
    if (iphones.length === 0) {
        document.getElementById("iphone-output").innerHTML = "No iPhones found.";
        return;
    }
    let html = "<ul>";
    iphones.forEach(ip => {
        html += `<li>ID: ${ip.id}, Model: ${ip.model}, Year: ${ip.releaseYear}</li>`;
    });
    html += "</ul>";
    document.getElementById("iphone-output").innerHTML = html;
}

async function createIphone() {
    const model = document.getElementById("iphone-model").value;
    const year = document.getElementById("iphone-year").value;
    const res = await fetch(`${API_BASE}/iphones`, {
        method:'POST',
        headers:{'Content-Type':'application/json'},
        body: JSON.stringify({ model, releaseYear: parseInt(year) })
    });
    const result = await res.json();
    document.getElementById("iphone-output").innerHTML = `Created iPhone ID ${result.id}, Model ${result.model}`;
    getAllIphones();
}

async function updateIphone() {
    const id = document.getElementById("update-iphone-id").value;
    const model = document.getElementById("update-iphone-model").value;
    const year = document.getElementById("update-iphone-year").value;
    if(!id) return alert("Enter iPhone ID to update");
    const res = await fetch(`${API_BASE}/iphones/${id}`, {
        method:'PUT',
        headers:{'Content-Type':'application/json'},
        body: JSON.stringify({ model, releaseYear: parseInt(year) })
    });
    if(res.status === 404) {
        document.getElementById("iphone-output").innerHTML = `iPhone with ID ${id} not found`;
    } else {
        const result = await res.json();
        document.getElementById("iphone-output").innerHTML = `Updated iPhone ID ${result.id}, Model ${result.model}`;
        getAllIphones();
    }
}

async function deleteIphone() {
    const id = document.getElementById("delete-iphone-id").value;
    await fetch(`${API_BASE}/iphones/${id}`, { method:'DELETE' });
    document.getElementById("iphone-output").innerHTML = `Deleted iPhone ID ${id}`;
    getAllIphones();
}

async function getIphoneById() {
    const id = document.getElementById("get-iphone-id").value;
    const res = await fetch(`${API_BASE}/iphones/${id}`);
    if(res.status===404) {
        document.getElementById("iphone-output").innerHTML = `iPhone with ID ${id} not found`;
    } else {
        const ip = await res.json();
        displayIphones([ip]);
    }
}

async function dumpIphones() {
    const res = await fetch(`${API_BASE}/iphones/dump/json`);
    const text = await res.text();
    document.getElementById("iphone-output").innerHTML = text;
}

async function loadIphones() {
    const res = await fetch(`${API_BASE}/iphones/load/json`);
    const text = await res.text();
    document.getElementById("iphone-output").innerHTML = text;
}

// ---------- Component Functions ----------
async function getAllComponents() {
    const res = await fetch(`${API_BASE}/components`);
    const components = await res.json();
    displayComponents(components);
}

async function getComponentsByIphone() {
    const id = document.getElementById("components-iphone-id").value;
    const res = await fetch(`${API_BASE}/components/iphone/${id}`);
    const components = await res.json();
    displayComponents(components);
}

function displayComponents(components) {
    if (components.length === 0) {
        document.getElementById("component-output").innerHTML = "No components found.";
        return;
    }
    let html = "<ul>";
    components.forEach(c => {
        html += `<li>ID: ${c.id}, Name: ${c.name}, Type: ${c.type}, Specs: ${c.specs}, iPhone ID: ${c.iphone.id}</li>`;
    });
    html += "</ul>";
    document.getElementById("component-output").innerHTML = html;
}

async function createComponent() {
    const name = document.getElementById("component-name").value;
    const type = document.getElementById("component-type").value;
    const specs = document.getElementById("component-specs").value;
    const iphoneId = document.getElementById("component-iphone-id-input").value;
    const res = await fetch(`${API_BASE}/components`, {
        method:'POST',
        headers:{'Content-Type':'application/json'},
        body: JSON.stringify({ name, type, specs, iphone: { id: parseInt(iphoneId) } })
    });
    const result = await res.json();
    document.getElementById("component-output").innerHTML = `Created Component ID ${result.id}, Name ${result.name}`;
    getAllComponents();
}

async function updateComponent() {
    const id = document.getElementById("update-component-id").value;
    const name = document.getElementById("update-component-name").value;
    const type = document.getElementById("update-component-type").value;
    const specs = document.getElementById("update-component-specs").value;
    const iphoneId = document.getElementById("update-component-iphone-id-input").value;
    if(!id) return alert("Enter Component ID to update");

    const res = await fetch(`${API_BASE}/components/${id}`, {
        method:'PUT',
        headers:{'Content-Type':'application/json'},
        body: JSON.stringify({ name, type, specs, iphone: { id: parseInt(iphoneId) } })
    });
    if(res.status===404) {
        document.getElementById("component-output").innerHTML = `Component with ID ${id} not found`;
    } else {
        const result = await res.json();
        document.getElementById("component-output").innerHTML = `Updated Component ID ${result.id}, Name ${result.name}`;
        getAllComponents();
    }
}

async function deleteComponent() {
    const id = document.getElementById("delete-component-id").value;
    await fetch(`${API_BASE}/components/${id}`, { method:'DELETE' });
    document.getElementById("component-output").innerHTML = `Deleted Component ID ${id}`;
    getAllComponents();
}

async function getComponentById() {
    const id = document.getElementById("get-component-id").value;
    const res = await fetch(`${API_BASE}/components/${id}`);
    if(res.status===404) {
        document.getElementById("component-output").innerHTML = `Component with ID ${id} not found`;
    } else {
        const c = await res.json();
        displayComponents([c]);
    }
}
