*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${filterOption}    class:product_sort_container
${appLogo}    class:app_logo
${ShoopingcardtIconOnInventoryPage}    class:shopping_cart_link
@{inventoryList}    class:inventory_item
@{imageList}    tag:img
${addToCart}    id:add-to-cart-sauce-labs-backpack
${addToSelectedProductButton}    id:add-to-cart-sauce-labs-backpack
