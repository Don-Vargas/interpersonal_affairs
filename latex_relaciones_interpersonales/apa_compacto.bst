%% apa_compacto.bst
%% Estilo de bibliografía APA actualizado
%% Este archivo fue creado para cumplir con las normas APA en español.

ENTRY
{ address
	author
	booktitle
	edition
	editor
	howpublished
	institution
	journal
	month
	note
	number
	organization
	pages
	publisher
	school
	series
	title
	type
	volume
	year }
{}
{ label }

INTEGERS { output.state before.all mid.sentence after.sentence }

FUNCTION {init.state.consts}
{ 
	output.state := before.all
}

FUNCTION {begin.bib}
{ 
	init.state.consts
}

FUNCTION {format.authors}
{ 
	author "author" format.names
}

FUNCTION {format.title}
{ 
	title "title" * 
}

FUNCTION {format.volume.number.pages}
{ 
	volume "volume" * 
	number "number" * 
	pages "pages" * 
}

FUNCTION {format.journal}
{ 
	journal "journal" * 
}

FUNCTION {format.book}
{ 
	title "title" * 
	publisher "publisher" * 
	edition "edition" *
}

FUNCTION {format.entry}
{ 
	format.authors
	format.year
	output.state mid.sentence =
	{ format.title }
	{ format.journal format.volume.number.pages }
	if$
}

FUNCTION {end.bib}
{ 
	new.block
}

FUNCTION {write.bib}
{ 
	output.state before.all =
	{ 
		"\end{thebibliography}" write$
}
{ 
	format.entry write$
}
if$
}

FUNCTION {article}
{ 
format.entry
}

FUNCTION {book}
{ 
format.book
}

FUNCTION {misc}
{ 
format.entry
}

FUNCTION {proceedings}
{ 
format.entry
}

FUNCTION {inproceedings}
{ 
format.entry
}

FUNCTION {thesis}
{ 
format.entry
}

FUNCTION {report}
{ 
format.entry
}

FUNCTION {unpublished}
{ 
format.entry
}

FUNCTION {conference}
{ 
format.entry
}

FUNCTION {manual}
{ 
format.entry
}

FUNCTION {keynote}
{ 
format.entry
}

FUNCTION {online}
{ 
format.entry
}

%% Funciones adicionales para personalizar el formato
FUNCTION {format.month}
{ 
month
}

%% Comienza el archivo .bst
FUNCTION {begin.bib}
{
output.state := before.all
}

% Definición de los tipos de entrada
ENTRY
{ article
book
inbook
incollection
inproceedings
manual
master'sthesis
phdthesis
proceedings
report
unpublished
online }
{ }
