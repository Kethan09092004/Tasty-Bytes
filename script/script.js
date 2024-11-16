const menuItems = [
    {id:1, name: 'Aloo Dosa', price:'₹30',img:'img/aloo dosa.jpg'},
    {id:2, name: 'Blue Cool Mojito',price:'₹70', img:'img/bluecool.jpg'},
    {id:3, name: 'Butter Chicken',price:'₹120' ,img:'img/butter chicken.jpg'},
    {id:4, name: 'ButterScotch Cool Cake',price:'₹300' ,img:'img//butterskotch cool cake.jpg'},
    {id:5, name: 'Cheese Sandwich', price:'₹150',img:'img/chees sandwich.jpg'},
    {id:6, name: 'Cheese Pizza', price:'₹250',img:'img/cheese pizza.jpg'},
    {id:7, name: 'Chicken Biryani',price:'₹150' ,img:'img/chicken biriyani.jpg'},
    {id:8, name: 'Chicken Burger',price:'₹80' ,img:'img/chicken burger.jpg'},
    {id:9, name: 'Chicken Kebab', price:'₹90',img:'img/chicken kebab.jpg'},
    {id:10, name: 'Chicken Lollipop',price:'₹250' ,img:'img/chicken lollipop.jpg'},
    {id:11, name: 'Chicken Noodles', price:'₹70',img:'img/chicken noodles.jpg'},
    {id:12, name: 'Chicken Shawrma', price:'₹100',img:'img/chicken shawarma.jpg'},
    {id:13, name: 'Chicken Tandoori', price:'₹450',img:'img/chicken tandoori.jpg'},
    {id:14, name: 'Chocolate Cool Cake',price: '₹200',img:'img/chocolate coolcake.jpg'},
    {id:15, name: 'Chocolate Milk Shake', price:'₹90',img:'img/chocolate milkshake.jpg'},
    {id:16, name: 'Chhole Buttani',price: '₹70',img:'img/chole buttani.jpg'},
    {id:17, name: 'French Fries', price:'₹99',img:'img/french fries.jpg'},
    {id:18, name: 'Fried Chicken',price: '₹500',img:'img/fried chicken.jpg'},
    {id:19, name: 'Gulab Jamun',price: '₹60',img:'img/gulabjamun.jpg'},
    {id:20, name: 'Indian Tiffins', price:'₹40',img:'img/indian tiffin.jpg'},
    {id:21, name: 'Kheer', price:'₹80',img:'img/kheer.jpg'},
    {id:22, name: 'Lemon Mojito', price:'₹90',img:'img/lemon mojito.jpg'},
    {id:23, name: 'Veggie Momos',price:'₹60' ,img:'img/momos.jpg'},
    {id:24, name: 'Palak Panner', price:'₹150',img:'img/palak punner.jpg'},
    {id:25, name: 'French Pasta',price: '₹65',img:'img/pasta.jpg'},
    {id:26, name: 'Panner Palao',price:'₹250' ,img:'img/punner pulao.jpg'},
    {id:27,name: 'Panner Tikka', price:'₹150',img:'img/punner tikka.jpg'},
    {id:28, name: 'Panner Butter Masala',price:'₹200' ,img:'img/punnerbuttermasala.jpg'},
    {id:29, name: 'Onion Samosa', price:'₹40',img:'img/samosa.jpg'},
    {id:30, name: 'Straw Berry MilkShake', price:'₹100',img:'img/strawbery milshake.jpg'} 
];

const menuContainer = document.getElementById('menu-items');

menuItems.forEach(item => {
    const menuItem = document.createElement('div');
    menuItem.classList.add('menu-item');
    menuItem.innerHTML =
     `
        <img src="${item.img}" alt="${item.name}" data-id="${item.id}" data-name="${item.name}" data-price="${item.price}">
        <h2>${item.name} -  ${item.price}</h2>
    `;
    menuItem.addEventListener('click', () => {
        const itemName = encodeURIComponent(item.name); // Encode item name to handle special characters
        const itemPrice = encodeURIComponent(item.price); // Encode item price to handle special characters
        window.location.href = 'order2.jsp?id=' + item.id + '&name=' + itemName + '&price=' + itemPrice;
    });
    menuContainer.appendChild(menuItem);
});


