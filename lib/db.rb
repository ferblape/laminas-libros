class DB
  def self.prints
    {
      "col-leccio-obra-grafica" => {
        :title => "Colección de obra gráfica",
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
        :short_description => <<-HTML
      <p>Edición  realizada por Vicent García Editores S.A.</p>
      <p>Tamaño: 50 cm x 65 cm</p>
HTML
      },
      "5-grabados" => {
        :title => "5 grabados",
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
        :short_description => <<-HTML
<p>Cinco grabados originales de Traver Calzada</p>
<p>Tamaño: 49 x 68 cm.</p>
HTML
      },
      "pedro-camara" => {
        :title => "Nombre desconocido - Pedro Cámara",
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
        :title => "Brevai d'amor",
        :short_description => <<-HTML
<p>Facsímil. Dos tomos. Ejemplar 110 / 300</p>
HTML
      },
      "cronica-de-valencia" => {
        :title => "Tercera parte de la crónica del Reyno de Valencia",
        :short_description => <<-HTML
<p>Autor: Martí de Viciana.</p>
<p>Facsímil</p>
HTML
      },
      "joan-roiç-de-corella" => {
        :title => "Obres de Joan Roiç de Corella",
        :short_description => <<-HTML
<p>Facsímil</p>
HTML
      },
      "medicina-antigua" => {
        :title => "Medicina Antigua",
        :short_description => <<-HTML
<p>Codex Vindobonensis</p>
HTML
      },
      "cosmografia" => {
        :title => "Cosmografia",
        :short_description => <<-HTML
<p>Claudio PTolomeo</p>
<p>Facsímil. Ejemplar nº 0513.</p>
HTML
      },
      "libro-del-repartimiento" => {
        :title => "Llibre del repartiment",
        :short_description => <<-HTML
<p>nº 2735 de una serie de 3000 ejemplares</p>
HTML
      }
    }
  end
end
