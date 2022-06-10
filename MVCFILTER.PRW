 // ######################################################################################
// Projeto: MVC - Framework para MVC
// Modulo : Model
// Fonte  : MVCFilter - Definição de filtro
// ---------+-------------------+--------------------------------------------------------
// Data     | Autor             | Descricao
// ---------+-------------------+--------------------------------------------------------
// 15.07.09 | 0548-Alan Candido | FNC ???????????/2009
// --------------------------------------------------------------------------------------
#include "mvcIncs.ch"

//-------------------------------------------------------------------------------------
/*/{Protheus.doc} MVCFilter
Definição de filtro

@author		0548 - Sergio Junior
@version	P11 
@since		15/07/2009

/*/
//-------------------------------------------------------------------------------------
class MVCFilter from BIFWObject
  data Name   as property
  data Title  as property
  data Exp    as property

	method MVCFilter() constructor
	method _new() constructor
	method _endMVCFilter()

endclass

//-------------------------------------------------------------------------------------
/*/{Protheus.doc} MVCFilter
Inicializa uma nova instância de definição de filtro.

@author    0548 - Alan Cândido
@version   P11 
@since	   15/07/2009
@return    Instância do objeto
@paramater aoOwner, "dono" do objeto
@see       IDAO
@sample

/*/
//-------------------------------------------------------------------------------------
method MVCFilter(acName, acTitle, acExp) class MVCFilter

 paramtype 0 var acName    as character
 paramtype 1 var acTitle   as character
 paramtype 2 var acExp     as character
     
 ::FName  := upper(acName)
 ::FTitle := acTitle
 ::FExp   := acExp
 
 ::BIFWObject()
 aAdd(::FClassesName, "MVCFILTER")

return

//-------------------------------------------------------------------------------------
/*/{Protheus.doc} _endMVCFilter
Finaliza a instancia.

@author    0548 - Alan Cândido
@version   P11 
@since	   15/07/2009
@return    
@paramater aoOwner, "dono" do objeto
@see       IDAO
@sample

/*/
//-------------------------------------------------------------------------------------
method _endMVCFilter() class MVCFilter 
  
 ::FName  := nil
 ::FTitle := nil
 ::FExp   := nil
 ::_endBIFWObject()
  
return
      
method getName() class MVCFilter 

return ::FName
  
method getTitle() class MVCFilter 

return ::FTitle
 
method getExp() class MVCFilter 

return ::FExp

//-------------------------------------------------------------------------------------
/*/{Protheus.doc} _new
Inicializa uma nova instância do objeto para efetuar a deserealização.
NÃO UTILIZA-LA PARA INSTANCIAR UM OBJETO.

@author		0548 - Alan Cândido
@version	P11 
@since		15/07/2009
@return		Instância do bifwObject
/*/
//-------------------------------------------------------------------------------------
method _new() class MVCFilter

return

// --------------------------------------------------------------------------------------
// Força a publicação do fonte
// --------------------------------------------------------------------------------------
function _MVCFilter()

  if .f.
    _MVCFilter()
  endif  

return

// Adicionei commentario de teste do Git
