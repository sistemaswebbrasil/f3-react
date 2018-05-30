import React from 'react'
import { Link } from 'react-router-dom'

const List = (props) => {
  return (
    <div>
          {props.error &&
              <div className="alert alert-danger" role="alert">
                  <h4 className="alert-heading">Erro!</h4>
                  <p>Não foi possível carregar os dados</p>
                  <hr />
                  <p className="mb-0">{props.error}</p>
              </div>
          }

          {props.items &&
              <div>
                  <table className="table table-striped table-bordered">
                      <thead>
                          <tr>
                              <th scope="col">id</th>
                              <th scope="col">Name</th>
                              <th scope="col">Username</th>
                              <th scope="col">Email</th>
                              <th scope="col">Action</th>
                          </tr>
                      </thead>
                      <tbody>
                          {props.items.map(item => (
                              <tr key={item.id}>
                                  <td>{item.id}</td>
                                  <td>{item.name}</td>
                                  <td>{item.username}</td>
                                  <td>{item.email}</td>
                                  <td>
                                  <Link to={`user/${item.id}/show`}>Show</Link>
                                 </td>
                              </tr>
                          ))}
                      </tbody>
                  </table>
              </div>
          }
    </div>
  )
}

export default List
