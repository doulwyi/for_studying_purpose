import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { FotoModule } from './foto/foto.module';
import { HttpClientModule } from '@angular/common/http';
import { CardModule } from './card/card.module';
import { ListagemComponent } from './listagem/listagem.component';
import { CadastroComponent } from './cadastro/cadastro.component';
import { moduloRoteamento } from './app.routes';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    ListagemComponent,
    CadastroComponent,
  ],
  imports: [
    BrowserModule,
    FotoModule,
    CardModule,
    HttpClientModule,
    moduloRoteamento,
    FormsModule,
    ReactiveFormsModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
