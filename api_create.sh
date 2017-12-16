#!/bin/bash

function usage {
	echo ' ____________________________________________________ '
	echo '|                                                    |'
	echo '| Uso: api_create /path/to/api                       |'
	echo '| Ejemplo: api_create /home/martin/prevision-backend |'
	echo '|____________________________________________________|'
	echo '					                    '
}

set -e

if [ $# -eq 0 ] || [ $# -gt 1 ] ; then
	usage
	exit 1
fi
echo '-- Creando API... --'
git clone http://github.com/martinnicolas/backend.git $1
echo '-- Limpiando directorio... --'
rm -rf $1/.git
echo '-- Listo!! --'


