import React, {useEffect, useState} from 'react'
import ProductCard from './ProductCard'

function Products () {
    const [product, setProduct] = useState([])
    useEffect(()=> {
        fetch("/products")
        .then(res => res.json())
        .then(data => setProduct(data))
        console.log(product, "hello")
    },[])
  

    return (
        <div>

        </div>
    )
}

export default Products