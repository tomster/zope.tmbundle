#!/bin/sh

echo '<pre>'
echo '=============================================='
echo 'Installing helper packages for the Zope bundle'
echo '=============================================='
echo
echo 'Installing PyFlakes' ;
echo '===================' ;
cd '../pyflakes-0.2.1'
python setup.py install ; 

echo ; echo ; echo 'Installing PdbSupport' ;
echo '=====================' ; 
cd '../pdbtextmatesupport' 
python setup.py install ;

echo ; echo ; echo 'Installing docutils' ;
echo '=====================' ; 
cd '../docutils' 
python setup.py install ;

echo '=============================================='
echo 'Finished installation'
echo '=============================================='

echo '</pre>'

( which rssst2html.py | grep -q "^no" ) && echo "<b>Attention!!!</b> You need to add the <code>&lt;path-to-your-python-Librar&gt;/Library/Frameworks/Python.framework/Versions/2.4/bin/</code> to your <code>PATH</code> variable. Check the output above where it is, if you aren't sure. "

echo 'Done.'