import 'package:flutter/material.dart';

class PoliticaPrivacidadSinopsis extends StatelessWidget {
  const PoliticaPrivacidadSinopsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              Text(
                'POLÍTICA DE PRIVACIDAD PARA APLICACIONES MÓVILES (APPS)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FINALIDAD DEL TRATAMIENTO DE DATOS. ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Para proceder al registro, acceso y posterior uso de la Aplicación, el Usuario deberá facilitar -de forma voluntaria-, datos de carácter personal (esencialmente, identificativos y de contacto), los cuales serán incorporados a soportes automatizados titularidad de ramsesindalecio.com La recogida, almacenamiento, modificación, estructuración y en su caso, eliminación, de los datos proporcionados por los Usuarios, constituirán operaciones de tratamiento llevadas a cabo por el Responsable, con la finalidad de garantizar el correcto funcionamiento de la Aplicación, mantener la relación de prestación de servicios y/o comercial con el Usuario, y para la gestión, administración, información, prestación y mejora del servicio. Los datos personales facilitados por el Usuario -especialmente, el correo electrónico o e-mail- podrán emplearse también para remitir boletines (newsletters), así como comunicaciones comerciales de promociones y/o publicidad de la Aplicación, siempre y cuando, el Usuario haya prestado previamente su consentimiento expreso para la recepción de estas comunicaciones vía electrónica. ',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'LEGITIMACIÓN.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'El tratamiento de los datos del Usuario, se realiza con las siguientes bases jurídicas que legitiman el mismo:',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'La solicitud de información y/o la contratación de los servicios de la Aplicación, cuyos términos y condiciones se pondrán a disposición del Usuario en todo caso, con carácter previo, para su expresa aceptación. ',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                'El consentimiento libre, específico, informado e inequívoco del Usuario, poniendo a su disposición la presente política de privacidad, que deberá aceptar mediante una declaración o una clara acción afirmativa, como el marcado de una casilla dispuesta al efecto',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                'En caso de que el Usuario no facilite a ramsesindalecio.com sus datos, o lo haga de forma errónea o incompleta, no será posible proceder al uso de la Aplicación. ',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'CONSERVACIÓN DE LOS DATOS PERSONALES',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Los datos personales proporcionados por el Usuario, se conservarán en los sistemas y bases de datos del Responsable del Tratamiento, mientras aquél continúe haciendo uso de la Aplicación, y siempre que no solicite su supresión. Con el objetivo de depurar las posibles responsabilidades derivadas del tratamiento, los datos se conservarán por un período minimo de 3 años.',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'DESTINATARIOS.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Los datos no se comunicarán a ningún tercero ajeno a ramsesindalecio.com, salvo obligación legal o en cualquier caso, previa solicitud del consentimiento del Usuario. De otra parte, ramsesindalecio.com podrá dar acceso o transmitir los datos personales facilitados por el Usuario, a terceros proveedores de servicios, con los que haya suscrito acuerdos de encargo de tratamiento de datos, y que únicamente accedan a dicha información para prestar un servicio en favor y por cuenta del Responsable.',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'RETENCIÓN DE DATOS',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ramsesindalecio.com, informa al Usuario de que, como prestador de servicio de alojamiento de datos y en virtud de lo establecido en la Ley 34/2002 de 11 de julio de Servicios de la Sociedad de la Información y de Comercio Electrónico (LSSI), retiene por un período máximo de 12 meses la información imprescindible para identificar el origen de los datos alojados y el momento en que se inició la prestación del servicio. La retención de estos datos no afecta al secreto de las comunicaciones y sólo podrán ser utilizados en el marco de una investigación criminal o para la salvaguardia de la seguridad pública, poniéndose a disposición de los jueces y/o tribunales o del Ministerio que así los requiera. La comunicación de datos a las Fuerzas y Cuerpos de Seguridad del Estado, se hará en virtud de lo dispuesto por la normativa sobre protección de datos personales, y bajo el máximo respeto a la misma. ',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PROTECCIÓN DE LA INFORMACIÓN ALOJADA.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'El Responsable del Tratamiento, adopta las medidas necesarias para garantizar la seguridad, integridad y confidencialidad de los datos conforme a lo dispuesto en el Reglamento (UE) 2016/679 del Parlamento Europeo y del Consejo, de 27 de abril de 2016, relativo a la protección de las personas físicas en lo que respecta al tratamiento de datos personales y a la libre circulación de los mismos. Si bien el Responsable, realiza copias de seguridad de los contenidos alojados en sus servidores, sin embargo no se responsabiliza de la pérdida o el borrado accidental de los datos por parte de los Usuarios. De igual manera, no garantiza la reposición total de los datos borrados por los Usuarios, ya que los citados datos podrían haber sido suprimidos y/o modificados durante el periodo de tiempo transcurrido desde la última copia de seguridad. Los servicios facilitados o prestados a través de la Aplicación, excepto los servicios específicos de backup, no incluyen la reposición de los contenidos conservados en las copias de seguridad realizadas por el Responsable del Tratamiento, cuando esta pérdida sea imputable al usuario; en este caso, se determinará una tarifa acorde a la complejidad y volumen de la recuperación, siempre previa aceptación del usuario. La reposición de datos borrados sólo está incluida en el precio del servicio cuando la pérdida del contenido sea debida a causas atribuibles al Responsable. ',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'EJERCICIO DE DERECHOS.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ramsesindalecio.com, informa al Usuario de que le asisten los derechos de acceso, rectificación, limitación, supresión, oposición y portabilidad, los cuales podrá ejercitar mediante petición dirigida al correo electrónico: ramses_888@hotmail.com Asimismo, el Usuario tiene derecho a revocar el consentimiento inicialmente prestado, y a interponer reclamaciones de derechos frente a la Agencia Española de Protección de Datos (AEPD).',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'COMUNICACIONES COMERCIALES POR VÍA ELECTRÓNICA.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'En aplicación de la LSSI (Ley de Servicios de la Sociedad de la Información), ramsesindalecio.com, no enviará comunicaciones publicitarias o promocionales por correo electrónico u otro medio de comunicación electrónica equivalente que previamente no hubieran sido solicitadas o expresamente autorizadas por los destinatarios de las mismas. En el caso de usuarios con los que exista una relación contractual, jurídica o de servicios previa, el Responsable del Tratamiento, sí está autorizado al envío de comunicaciones comerciales referentes a productos o servicios del Responsable que sean similares a los que inicialmente fueron objeto de contratación con el cliente. En caso de que el Usuario quiera darse de baja a la hora de recibir las citadas comunicaciones, podrá hacerlo remitiendo su voluntad por e-mail al correo electrónico: ramses_888@hotmail.com',
                style: TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
