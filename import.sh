#!/bin/bash

export VLOCITY_MIGRATION_TOOL= # <vlocity_build_folder> ie. (/Users/alejandro/Vlocity/Projects/vlocity_build)
export VLOCITY_MIGRATION_TOOL_MAIN=Gruntfile.js
export BUILD_PROPERTIES_FILE= # <build_properties_file> ie. (build-dev.properties)

# packExport: Export from a Salesforce org into a DataPack Directory
grunt --gruntfile=${VLOCITY_MIGRATION_TOOL}/${VLOCITY_MIGRATION_TOOL_MAIN} --tasks=grunt -propertyfile ${PWD}/${BUILD_PROPERTIES_FILE} -job TechnologyUpgradeImport packExport


# packDeploy: Deploy all contents of a DataPacks Directory
# packGetDiffsAndDeploy: Deploy only files that are modified compared to the target Org
# packBuildFile: Build a DataPacks Directory into a DataPack file
# packExpandFile: Create a DataPack Directory from a previosuly exported file
# packExportSingle: Export a Single DataPack by Id
# packContinue: Continues a job that failed due to an error
# packRetry: Continues a Job retrying all deploy errors or re-running all export queries