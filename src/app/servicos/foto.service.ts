import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Foto } from '../foto/foto';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FotoService {
  private urlApi = 'http://localhost:3000/v1/fotos/';

  constructor(private conexaoApi: HttpClient) {}

  listar(): Observable<Foto[]> {
    return this.conexaoApi.get<Foto[]>(this.urlApi);
  }

  cadastrar(foto: Foto): Observable<Object> {
    return this.conexaoApi.post(this.urlApi, foto);
  }

  deletar(foto: Foto): Observable<Object> {
    return this.conexaoApi.delete(this.urlApi + foto._id);
  }

  buscar(fotoId: string): Observable<Foto> {
    return this.conexaoApi.get<Foto>(this.urlApi + fotoId);
  }

  editar(foto: Foto): Observable<Object> {
    return this.conexaoApi.put(this.urlApi + foto._id, foto);
  }
}
