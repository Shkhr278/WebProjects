// JavaScript to manage the cart functionality
document.addEventListener("DOMContentLoaded", () => {
    const cart = JSON.parse(localStorage.getItem("cart")) || [];

    // Update Cart in Local Storage
    const updateCart = () => {
        localStorage.setItem("cart", JSON.stringify(cart));
    };

    // Add item to cart
    const addToCart = (id, name, price) => {
        const item = cart.find(item => item.id === id);
        if (item) {
            item.quantity++;
        } else {
            cart.push({ id, name, price, quantity: 1 });
        }
        updateCart();
        alert(`${name} added to cart!`);
    };

    // Display Cart Items on Cart Page
    const displayCartItems = () => {
        const cartItemsContainer = document.getElementById("cart-items");
        const totalPriceElement = document.getElementById("total-price");

        if (cartItemsContainer && totalPriceElement) {
            cartItemsContainer.innerHTML = "";
            let total = 0;

            cart.forEach(item => {
                const itemElement = document.createElement("div");
                itemElement.innerHTML = `
                    <p>${item.name} - $${item.price} x ${item.quantity}</p>
                `;
                cartItemsContainer.appendChild(itemElement);
                total += item.price * item.quantity;
            });

            totalPriceElement.textContent = `Total Price: $${total}`;
        }
    };

    // Clear Cart
    const clearCart = () => {
        cart.length = 0;
        updateCart();
        displayCartItems();
        alert("Cart cleared!");
    };

    // Add Event Listeners
    const addCartButtons = document.querySelectorAll(".add-to-cart");
    addCartButtons.forEach(button => {
        button.addEventListener("click", () => {
            const itemElement = button.closest(".item");
            const id = itemElement.dataset.id;
            const name = itemElement.dataset.name;
            const price = parseFloat(itemElement.dataset.price);
            addToCart(id, name, price);
        });
    });

    const clearCartButton = document.getElementById("clear-cart");
    if (clearCartButton) {
        clearCartButton.addEventListener("click", clearCart);
    }

    // Display cart items if on the cart page
    displayCartItems();
});
