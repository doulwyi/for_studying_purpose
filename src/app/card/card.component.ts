import { Component, Input } from '@angular/core';
import { Foto } from '../foto/foto';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html'
})
export class CardComponent {
  // tslint:disable-next-line:no-input-rename
  @Input('dados') foto: Foto;
}
