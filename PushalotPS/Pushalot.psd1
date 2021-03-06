#
# Module manifest for module 'ContainerProvider'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/22/2015
#

@{
# Script module or binary module file associated with this manifest.
RootModule = 'PushalotPS.dll'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
GUID = '7305746e-a367-45f5-910d-3d7a63621003'

# Author of this module
Author = 'Tigran TIKSN Thorosyan'

# Company or vendor of this module
CompanyName = 'TIKSN Development'

# Copyright statement for this module
Copyright = 'TIKSN Development. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Pushalot PowerShell Module is binary module for PowerShell which enables IT professional to send Pushalot messages from their PowerShell script. Now IT professional can receive instant notifications on their Windows Phone or Windows 8 devices when their script needs attention.'

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = '5.0'

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# Functions to export from this module
# FunctionsToExport = @('Send-PushalotMessage')

# Variables to export from this module
# VariablesToExport = ''

# Aliases to export from this module
# AliasesToExport = ''

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
#PrivateData = @{
#    "PackageManagementProviders" = 'ContainerProvider.psm1'

#    PSData = @{

#        # Tags applied to this module. These help with module discovery in online galleries.
#        Tags = @('PackageManagement', 'Provider', 'Container')

#        # A URL to the license for this module.
#        # LicenseUri = ''

#        # A URL to the main website for this project.
#        # ProjectUri = ''

#        # A URL to an icon representing this module.
#        # IconUri = ''

#        # ReleaseNotes of this module
#        # ReleaseNotes = ''

#    } # End of PSData hashtable

#} # End of PrivateData hashtable

#FormatsToProcess  = @('ContainerProvider.ps1xml')
#}

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @(
	'Newtonsoft.Json.dll',
	'Pushalot.dll',
	'PushalotPS.dll',
	'System.Net.Http.Extensions.dll',
	'System.Net.Http.Primitives.dll')
}