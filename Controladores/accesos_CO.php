<?php
require_once "modelos/accesos_MO.php";

class accesos_CO
{
    function __construct(){}

    function verificarInicioSesion()
    {
        $usuario=$_POST["usuario"];
        $clave=$_POST["clave"];

        $conexion=new servidor('A');

        $accesos_MO=new accesos_MO($conexion);

        $arreglo_accesos=$accesos_MO->verificarInicioSesion($usuario,$clave);

        if($arreglo_accesos)
        {
            $_SESSION["id_accesos"]=$arreglo_accesos[0]->id_accesos;
            $_SESSION["autenticado"]="SI";
            header("Location: index.php");
        }
        else
        {
            header("Location: index.php?error=ERROR: Usuario No Registrado&usuario=$usuario");
        }
    }

    function agregar()
    {
        $usuario=$_POST["usuario"];
        $clave=$_POST["clave"];

        $conexion=new servidor('A');

        $accesos_MO=new accesos_MO($conexion);

        $arreglo_accesos=$accesos_MO->unico($usuario);

        if($arreglo_accesos)
        {
            $respuesta = [
                "estado" => "ADVERTENCIA",
                'mensaje' => "ADVERTENCIA: El usuario <b>$usuario</b> ya existe"
            ];
        }
        else
        {
            $filas_afectadas=$accesos_MO->agregar($usuario,$clave);
            
            if($filas_afectadas)
            {
                $arreglo_accesos=$accesos_MO->seleccionar("usuario",$usuario);

                $id_accesos=$arreglo_accesos[0]->id_accesos;
                $usuario=$arreglo_accesos[0]->usuario;
                $fecha_creacion=$arreglo_accesos[0]->fecha_creacion;
                $fecha_actualizacion=$arreglo_accesos[0]->fecha_actualizacion;
                
                $respuesta = [
                    "estado" => "EXITO",
                    'mensaje' => "EXITO: Registro Guardado",
                    'id_accesos' => $id_accesos,
                    'usuario' => $usuario,
                    'fecha_creacion' => $fecha_creacion,
                    'fecha_actualizacion' => $fecha_actualizacion
                ];
            }
            else
            {
                $respuesta = [
                    "estado" => "ADVERTENCIA",
                    'mensaje' => "ADVERTENCIA: No se guardo el registro"
                ];
            }
        }

        echo json_encode($respuesta);
    }

    function actualizar()
    {
        $id_accesos=$_POST["id_accesos"];
        $usuario=$_POST["usuario"];
        $clave=$_POST["clave"];

        $conexion=new servidor('A');

        $accesos_MO=new accesos_MO($conexion);

        $arreglo_accesos=$accesos_MO->unico($usuario,$id_accesos);

        if($arreglo_accesos)
        {
            $respuesta = [
                "estado" => "ADVERTENCIA",
                'mensaje' => "ADVERTENCIA: El usuario <b>$usuario</b> ya existe"
            ];
        }
        else
        {
            $filas_afectadas=$accesos_MO->actualizar($id_accesos,$usuario,$clave);
            
            if($filas_afectadas)
            {
                $arreglo_accesos=$accesos_MO->seleccionar("id_accesos",$id_accesos);
                $fecha_actualizacion=$arreglo_accesos[0]->fecha_actualizacion;

                $respuesta = [
                    "estado" => "EXITO",
                    'mensaje' => "EXITO: Registro Guardado",
                    'id_accesos' => $id_accesos,
                    'fecha_actualizacion' => $fecha_actualizacion
                ];
            }
            else
            {
                $respuesta = [
                    "estado" => "ADVERTENCIA",
                    'mensaje' => "ADVERTENCIA: No ocurrieron cambios"
                ];
            }
        }
        echo json_encode($respuesta);
    }

    function cerrarSesion($arreglo_url)
    {
        session_unset();
        // Destruir todas las variables de sesión.	
        $_SESSION = array();
        
        // Si se desea destruir la sesión completamente, borre también la cookie de sesión.
        // Nota: ¡Esto destruirá la sesión, y no la información de la sesión!
        if (ini_get("session.use_cookies")) 
        {
          $params = session_get_cookie_params();
          setcookie(session_name(), '', time() - 42000, $params["path"], $params["domain"], $params["secure"], $params["httponly"]);
        }
        // Finalmente, destruir la sesión.	
        session_destroy();

        $usuario="<b>".$arreglo_url[0]."</b> Que tenga un buen d&iacute;a ";

        $respuesta = [
            "estado" => "EXITO",
            'mensaje' => $usuario
        ];

        echo json_encode($respuesta);
    }
}
?>