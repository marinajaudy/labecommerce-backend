// export enum PRODUCT_CATEGORY {
//     ACCESSORIES = "Acessórios",
//     CLOTHES_AND_SHOES = "Roupas e calçados",
//     ELECTRONICS = "Eletrônicos"
// }

export type TUsers = {
    id: string,
    name: string,
    email: string,
    password: string
}

export type TProduct = {
    id: string,
    name: string,
    price: number,
    description: string,
    image_url: string
}

export type TPurchase ={
    userId: string,
    productId: string,
    quantity: number,
    totalPrice: number
}