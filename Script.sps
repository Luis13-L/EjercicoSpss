* Encoding: UTF-8.

* Generador de gráficos.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Estudiante 
    SUM(MatematicaDiscreta)[name="SUM_MatematicaDiscreta" LEVEL=SCALE] MISSING=LISTWISE REPORTMISSING=NO    
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Estudiante=col(source(s), name("Estudiante"), unit.category())
  DATA: SUM_MatematicaDiscreta=col(source(s), name("SUM_MatematicaDiscreta"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("NombreEs"))
  GUIDE: text.title(label("Gráfico circular Suma de HorasaLaSemana por NombreEs"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  ELEMENT: interval.stack(position(summary.percent(SUM_MatematicaDiscreta))), 
    color.interior(Estudiante))
END GPL.
