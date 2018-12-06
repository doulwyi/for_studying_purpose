import { Component, OnInit } from '@angular/core';
import { FotoService } from '../servicos/foto.service';
import { Foto } from '../foto/foto';

@Component({
  // tslint:disable-next-line:component-selector
  selector: 'caelumpic-listagem',
  templateUrl: './listagem.component.html',
  styles: []
})
export class ListagemComponent implements OnInit {
  title = 'caelumpic';
  photosList: Foto[] = [];

  constructor(private fotoService: FotoService) {
    this.fotoService
    .listar()
    .subscribe(
      fotosApi => {
        this.photosList = fotosApi;
    });
  }

  ngOnInit() {}

  excluir(fotoApagada: Foto) {
    console.log(`Apagou ${fotoApagada.titulo}`);
    this.fotoService.deletar(fotoApagada).subscribe(
      () => {
        this.photosList = this.photosList.filter(foto => foto !== fotoApagada);
        console.log(`Apagou ${fotoApagada}`);
      }
    );
  }
}
