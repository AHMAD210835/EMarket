

function confirmDelete() {
    return confirm("Bu öğeyi silmek istediğinize emin misiniz?");
}

function showAddedAlert() {
    alert("Ürün sepete eklendi!");
}

function toggleDetails(id) {
    const element = document.getElementById(id);
    if (element.style.display === "none") {
        element.style.display = "block";
    } else {
        element.style.display = "none";
    }
}



function showAlert() {
    const alertBox = document.getElementById('successAlert');
    alertBox.style.display = 'block';
    setTimeout(() => {
        alertBox.style.display = 'none';
    }, 3000);
}

function addToCart(productId) {
   
    fetch(`/Cart/AddToCart/${productId}`)
        .then(response => {
            if (response.ok) {
                showAlert(); 
            }
        });
}


function clearCart() {
    fetch('/Cart/ClearCart', {
        method: 'POST'
    }).then(response => {
        if (response.ok) {
            showClearAlert();
            updateCartCount();
       
            setTimeout(() => {
                location.reload();
            }, 1000);
        }
    });
    location.reload();
   
}

function showClearAlert() {
    const alertBox = document.getElementById('clearAlert');
    alertBox.style.display = 'block';
    setTimeout(() => {
        alertBox.style.display = 'none';
    }, 3000);
}

function updateCartCount() {
    const counter = document.getElementById('cartCount');
    counter.textContent = 0;
}