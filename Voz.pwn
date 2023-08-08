#include <a_samp>
#include <zcmd>
#define FILTERSCRIPT

#define DIALOG_VOZ 365

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("Texto a voz by Chara420\n DC: chara420");
	print("--------------------------------------\n");
	return 1;
}
public OnFilterScriptExit()
{
	print("\n--------------------------------------");
	print("FS Descargado correctamente");
	print("--------------------------------------\n");
	return 1;
}

CMD:loquendo(playerid, params[])
{
	ShowPlayerDialog(playerid, DIALOG_VOZ,DIALOG_STYLE_INPUT,"{ffffff}Loquendo Voz","{FF8000}Escribe el texto que todos escucharán\n\n{ff0000}Info: {ffffff}No mal usar, max. 256 cáracteres","Reproducir","Cancelar");
	PlayerPlaySound(playerid, 1058 , 0.0, 0.0, 0.0);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIALOG_VOZ:
		{
    		if(response)
    		{
    			new rep[256];
	    		for(new i = 0; i < MAX_PLAYERS; i++)
	    		{
		    		format(rep, sizeof(rep), "http://audio1.spanishdict.com/audio?lang=es&voice=Ximena&speed=25&text=%s", inputtext);
		    		PlayAudioStreamForPlayer(i, rep, 0, 0, 0, 0, 0);
				}
			}
		}
	}
	return 1;
}
