class DB
  def self.prints
    {
      "col-leccio-obra-grafica" => {
        :title => "Colección de obra gráfica",
        :keywords => "R. Cacho, Mª A. Raventós, Antoni Tomás, Venta láminas",
        :short_description => <<-HTML
<p>Proyecto de investigación artística a cargo de Adrià Lanuza</p>

<ul>
  <li><em>Soliloquio</em> - R. Cacho</li>
  <li><em>El darrer comunicat</em> - Mª A. Raventós</li>
  <li><em>La Sequiola</em> - Antoni Tomás</li>
</ul>
HTML
      },
      "laminas-genaro-lahuerta" => {
        :title => "12 láminas de Genaro Lahuerta",
        :keywords => "Genaro Lahuerta, Láminas",
        :short_description => <<-HTML
      <p>Edición  realizada por Vicent García Editores S.A.</p>
      <p>Tamaño: 50 cm x 65 cm</p>
HTML
      },
      "5-grabados" => {
        :title => "5 grabados",
        :keywords => "Manuel H. Mompó,Jordi Teixidor,Rafael Canogar,Joaquin Michavilla,Joaquin Capa, Venta grabados",
        :short_description => <<-HTML
<p>Edición limitada a 99 copias. La que se presenta es la nº 40 / 99.</p>
<p>Tamaño: 55.5cm x 75.5cm</p>

<ul>
  <li>Manuel H. Mompó</li>
  <li>Jordi Teixidor</li>
  <li>Rafael Canogar</li>
  <li>Joaquin Michavilla</li>
  <li>Joaquin Capa</li>
</ul>
HTML
      },
      "llibre-establiments-vila-de-vilafa" => {
        :title => "Libre d'establiments de la Vila de Vilafa",
        :keywords => "Llibre Establiments, Manuel Boix, Pilar Dolz, Manuel Menan, Amat Bellés, Vicent Traver, Venta láminas",
        :short_description => <<-HTML
<p><em>Edición parcial facsímil.</em></p>
<p>5 planchas cobre niqueladas en estuches de marrón oscuro</p>
<ul>
  <li><em>Abellars</em> - Manuel Boix</li>
  <li><em>Forn de Cals</em> - Pilar Dolz</li>
  <li><em>Olivars</em> - Manuel Menan</li>
  <li><em>Porchs</em> - Amat Bellés</li>
  <li><em>Vinyes</em> - Vicent Traver</li>
</ul>
HTML
      },
      "5-litografias" => {
        :title => "Cinco litografías",
        :keywords => "Litografías, Michavilla, Prades, Progreso, Salvatierra, Vivó, Venta litografías",
        :short_description => <<-HTML
<ul>
  <li><em>Març</em> - Michavila</li>
  <li><em>Terra</em> - Prades</li>
  <li><em>Figuera</em> - Progreso</li>
  <li><em>Festa</em> - Salvatierra</li>
  <li><em>Febra</em> - Vivó</li>
</ul>
HTML
      },
      "grabados-traver-calzada" => {
        :title => "Huellas",
        :keywords => "Traver Calzada, Grabados, Venta grabado",
        :short_description => <<-HTML
<p>Cinco grabados originales de Traver Calzada</p>
<p>Tamaño: 49 x 68 cm.</p>
HTML
      },
      "pedro-camara" => {
        :title => "Nombre desconocido - Pedro Cámara",
        :keywords => "Pedro Cámara, Venta cuadro",
        :short_description => <<-HTML
<p>Obra del pintor Pedro Cámara. 1979</p>
<p>Tamaño: 74 x 60 cm.</p>
HTML
      }
    }
  end

  def self.books
    {
      "brevari-d-amor" => {
        :title => "Breviari d'amor",
        :keywords => "Breviari d'amor, Venta de libros, Facsímil",
        :short_description => <<-HTML
<p>Facsímil. Dos tomos. Ejemplar 110 / 300</p>
HTML
      },
      "cronica-de-valencia" => {
        :title => "Tercera parte de la crónica del Reyno de Valencia",
        :keywords => "Tercera parte de la crónica del Reyno de Valencia, Martí de Viciana, Venta de libros, Facsímil",
        :short_description => <<-HTML
<p>Autor: Martí de Viciana.</p>
<p>Facsímil</p>
HTML
      },
      "joan-roig-de-corella" => {
        :title => "Obres de Joan Roiç de Corella",
        :keywords => "Obres de Joan Roiç de Corella, Venta de libros, Facsímil",
        :short_description => <<-HTML
<p>Facsímil</p>
HTML
      },
      "medicina-antigua" => {
        :title => "Medicina Antigua",
        :keywords => "Medicina Antigua, Venta de libros, Facsímil",
        :short_description => <<-HTML
<p>Codex Vindobonensis</p>
HTML
      },
      "cosmografia" => {
        :title => "Cosmografia",
        :keywords => "Cosmografia, Claudio PTolomeo, Venta de libros, Facsímil",
        :short_description => <<-HTML
<p>Claudio PTolomeo</p>
<p>Facsímil. Ejemplar nº 0513.</p>
HTML
      },
      "libro-del-repartimiento" => {
        :title => "Llibre del repartiment",
        :keywords => "Llibre del repartiment, Venta de libros",
        :short_description => <<-HTML
<p>nº 2735 de una serie de 3000 ejemplares</p>
HTML
      }
    }
  end
end
