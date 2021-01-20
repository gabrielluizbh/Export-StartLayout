# Script dos comandos utilizados para personalizar o Menu Iniciar e Barra de Tarefas do Windows 10 usando Diretivas de Grupo - Créditos Gabriel Luiz - www.gabrielluiz.com ##


# Comandos cria o diretório XML. O segundo comando cria um compartilhamento de arquivo chamado XML

New-Item -ItemType Directory -Path C:\XML
New-SmbShare -Path C:\XML\ -Name XML

# Comandos de exportação de layout do Menu Iniciar. Windows 10, versão 1607, 1703 ou 1803.

Export-StartLayout –path C:\XML\layout-menu-iniciar.xml

# Comandos de exportação de layout do Menu Iniciar. Windows 10, versão 1809 ou superior.

Export-StartLayout -UseDesktopApplicationID –path C:\XML\layout-menu-iniciar.xml

<# 
Referências:

https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/customize-start-layout?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/pt-br/windows/configuration/configure-windows-10-taskbar?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/pt-br/windows/configuration/customize-and-export-start-layout?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/pt-br/windows/configuration/customize-windows-10-start-screens-by-using-group-policy?WT.mc_id=WDIT-MVP-5003815

https://sccmguru.wordpress.com/2016/08/18/windows-10-1607-taskbar-and-start-customization-deep-dive/

https://docs.microsoft.com/pt-br/archive/blogs/deploymentguys/windows-10-start-layout-customization?WT.mc_id=WDIT-MVP-5003815

#>
