
import  { useParams, useHistory } from 'react-router-dom'
import React, {useState, useEffect} from 'react'

function ProductDetails({deleteProduct}) {

const[product, setProduct]= useState({}) 
const [loading, setLoading] = useState(true)
const [errors, setErrors] = useState(false)

const params = useParams()
const history = useHistory()

useEffect(() => {
    fetch(`/products/${params.id}`)
    .then(res => { 
      if(res.ok){
        res.json().then(data => {
            setProduct(data)
          setLoading(false)
        })
      } else {
        console.log('error')
        res.json().then(data => setErrors(data.error))
      }
    })
}, [])

function handleDelete(){
   
    fetch(`/products/${params.id}`,{
      method:'DELETE',
      headers: {'Content-Type': 'application/json'}
    })
    .then(res => {
      if(res.ok){
        deleteProduct(id)
        history.push('/')
      } else {
        res.json().then(data => setErrors(Object.entries(data.errors).map(e => `${e[0]} ${e[1]}`)))
      }
    })
  }


  if(loading) return <h1>Loading</h1>
  if(errors) return <h1>{errors}</h1>

  const{price, url, description, like_count, name} = product

  return (
    <>
<card>
    <div>
        <h2>
            {name}
        </h2>
    </div>
<img src= {url}/>
<div>
   <p>ETH: {price}</p> 
    <p> likes: {like_count}</p>
</div>
<div>
    <h3>
        Description: 
    </h3>
    <p>
        {description}
    </p>
</div>



</card>




<button onClick={handleDelete}>Delete Production</button>
    </>
  )
}

export default ProductDetails