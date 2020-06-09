
# special case begin
if(NOT QT_FEATURE_system_zlib)
    find_package(Qt6 COMPONENTS Zlib)
elseif(NOT TARGET ZLIB::ZLIB)
    qt_find_package(ZLIB PROVIDED_TARGETS ZLIB::ZLIB)
endif()
# special case end

function(qt3d_extend_target_for_assimp target)
    set(assimpDir ${PROJECT_SOURCE_DIR}/src/3rdparty/assimp)
    qt_extend_target(${target} CONDITION QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        LIBRARIES
            WrapAssimp::WrapAssimp
    )

    qt_skip_warnings_are_errors(${target})

    qt_extend_target(${target} CONDITION NOT QT_FEATURE_system_assimp OR (CMAKE_CROSSCOMPILING AND host_build)
        SOURCES
            ${assimpDir}/src/code/3DS/3DSExporter.h
            ${assimpDir}/src/code/3DS/3DSHelper.h
            ${assimpDir}/src/code/3DS/3DSLoader.h
            ${assimpDir}/src/code/3MF/3MFXmlTags.h
            ${assimpDir}/src/code/3MF/D3MFExporter.h
            ${assimpDir}/src/code/3MF/D3MFImporter.h
            ${assimpDir}/src/code/3MF/D3MFOpcPackage.h
            ${assimpDir}/src/code/AC/ACLoader.h
            ${assimpDir}/src/code/ASE/ASELoader.h
            ${assimpDir}/src/code/ASE/ASEParser.h
            ${assimpDir}/src/code/Assbin/AssbinExporter.h
            ${assimpDir}/src/code/Assbin/AssbinLoader.h
            ${assimpDir}/src/code/Assjson/cencode.h
            ${assimpDir}/src/code/Assjson/mesh_splitter.h
            ${assimpDir}/src/code/Assxml/AssxmlExporter.h
            ${assimpDir}/src/code/B3D/B3DImporter.h
            ${assimpDir}/src/code/BVH/BVHLoader.h
            ${assimpDir}/src/code/Blender/BlenderBMesh.h
            ${assimpDir}/src/code/Blender/BlenderCustomData.h
            ${assimpDir}/src/code/Blender/BlenderDNA.h
            ${assimpDir}/src/code/Blender/BlenderIntermediate.h
            ${assimpDir}/src/code/Blender/BlenderLoader.h
            ${assimpDir}/src/code/Blender/BlenderModifier.h
            ${assimpDir}/src/code/Blender/BlenderScene.h
            ${assimpDir}/src/code/Blender/BlenderSceneGen.h
            ${assimpDir}/src/code/Blender/BlenderTessellator.h
            ${assimpDir}/src/code/C4D/C4DImporter.h
            ${assimpDir}/src/code/CApi/CInterfaceIOWrapper.h
            ${assimpDir}/src/code/COB/COBLoader.h
            ${assimpDir}/src/code/COB/COBScene.h
            ${assimpDir}/src/code/CSM/CSMLoader.h
            ${assimpDir}/src/code/Collada/ColladaExporter.h
            ${assimpDir}/src/code/Collada/ColladaHelper.h
            ${assimpDir}/src/code/Collada/ColladaLoader.h
            ${assimpDir}/src/code/Collada/ColladaParser.h
            ${assimpDir}/src/code/Common/BaseProcess.h
            ${assimpDir}/src/code/Common/DefaultProgressHandler.h
            ${assimpDir}/src/code/Common/FileLogStream.h
            ${assimpDir}/src/code/Common/FileSystemFilter.h
            ${assimpDir}/src/code/Common/IFF.h
            ${assimpDir}/src/code/Common/Importer.h
            ${assimpDir}/src/code/Common/PolyTools.h
            ${assimpDir}/src/code/Common/ScenePreprocessor.h
            ${assimpDir}/src/code/Common/ScenePrivate.h
            ${assimpDir}/src/code/Common/SplitByBoneCountProcess.h
            ${assimpDir}/src/code/Common/StdOStreamLogStream.h
            ${assimpDir}/src/code/Common/TargetAnimation.h
            ${assimpDir}/src/code/Common/VertexTriangleAdjacency.h
            ${assimpDir}/src/code/Common/Win32DebugLogStream.h
            ${assimpDir}/src/code/Common/assbin_chunks.h
            ${assimpDir}/src/code/Common/simd.h
            ${assimpDir}/src/code/DXF/DXFHelper.h
            ${assimpDir}/src/code/DXF/DXFLoader.h
            ${assimpDir}/src/code/FBX/FBXCommon.h
            ${assimpDir}/src/code/FBX/FBXCompileConfig.h
            ${assimpDir}/src/code/FBX/FBXConverter.h
            ${assimpDir}/src/code/FBX/FBXDocument.h
            ${assimpDir}/src/code/FBX/FBXDocumentUtil.h
            ${assimpDir}/src/code/FBX/FBXExportNode.h
            ${assimpDir}/src/code/FBX/FBXExportProperty.h
            ${assimpDir}/src/code/FBX/FBXExporter.h
            ${assimpDir}/src/code/FBX/FBXImportSettings.h
            ${assimpDir}/src/code/FBX/FBXImporter.h
            ${assimpDir}/src/code/FBX/FBXMeshGeometry.h
            ${assimpDir}/src/code/FBX/FBXParser.h
            ${assimpDir}/src/code/FBX/FBXProperties.h
            ${assimpDir}/src/code/FBX/FBXTokenizer.h
            ${assimpDir}/src/code/FBX/FBXUtil.h
            ${assimpDir}/src/code/HMP/HMPFileData.h
            ${assimpDir}/src/code/HMP/HMPLoader.h
            ${assimpDir}/src/code/HMP/HalfLifeFileData.h
            ${assimpDir}/src/code/Importer/IFC/IFCLoader.h
            ${assimpDir}/src/code/Importer/IFC/IFCReaderGen_2x3.h
            ${assimpDir}/src/code/Importer/IFC/IFCReaderGen_4.h
            ${assimpDir}/src/code/Importer/IFC/IFCUtil.h
            ${assimpDir}/src/code/Importer/STEPParser/STEPFileEncoding.h
            ${assimpDir}/src/code/Importer/STEPParser/STEPFileReader.h
            ${assimpDir}/src/code/Importer/StepFile/StepFileImporter.h
            ${assimpDir}/src/code/Importer/StepFile/StepReaderGen.h
            ${assimpDir}/src/code/Irr/IRRLoader.h
            ${assimpDir}/src/code/Irr/IRRMeshLoader.h
            ${assimpDir}/src/code/Irr/IRRShared.h
            ${assimpDir}/src/code/LWO/LWOAnimation.h
            ${assimpDir}/src/code/LWO/LWOFileData.h
            ${assimpDir}/src/code/LWO/LWOLoader.h
            ${assimpDir}/src/code/LWS/LWSLoader.h
            ${assimpDir}/src/code/MD2/MD2FileData.h
            ${assimpDir}/src/code/MD2/MD2Loader.h
            ${assimpDir}/src/code/MD2/MD2NormalTable.h
            ${assimpDir}/src/code/MD3/MD3FileData.h
            ${assimpDir}/src/code/MD3/MD3Loader.h
            ${assimpDir}/src/code/MD4/MD4FileData.h
            ${assimpDir}/src/code/MD5/MD5Loader.h
            ${assimpDir}/src/code/MD5/MD5Parser.h
            ${assimpDir}/src/code/MDC/MDCFileData.h
            ${assimpDir}/src/code/MDC/MDCLoader.h
            ${assimpDir}/src/code/MDC/MDCNormalTable.h
            ${assimpDir}/src/code/MDL/MDLDefaultColorMap.h
            ${assimpDir}/src/code/MDL/MDLFileData.h
            ${assimpDir}/src/code/MDL/MDLLoader.h
            ${assimpDir}/src/code/MMD/MMDCpp14.h
            ${assimpDir}/src/code/MMD/MMDImporter.h
            ${assimpDir}/src/code/MMD/MMDPmdParser.h
            ${assimpDir}/src/code/MMD/MMDPmxParser.h
            ${assimpDir}/src/code/MMD/MMDVmdParser.h
            ${assimpDir}/src/code/MS3D/MS3DLoader.h
            ${assimpDir}/src/code/Material/MaterialSystem.h
            ${assimpDir}/src/code/NDO/NDOLoader.h
            ${assimpDir}/src/code/NFF/NFFLoader.h
            ${assimpDir}/src/code/OFF/OFFLoader.h
            ${assimpDir}/src/code/Obj/ObjExporter.h
            ${assimpDir}/src/code/Obj/ObjFileData.h
            ${assimpDir}/src/code/Obj/ObjFileImporter.h
            ${assimpDir}/src/code/Obj/ObjFileMtlImporter.h
            ${assimpDir}/src/code/Obj/ObjFileParser.h
            ${assimpDir}/src/code/Obj/ObjTools.h
            ${assimpDir}/src/code/Ogre/OgreBinarySerializer.h
            ${assimpDir}/src/code/Ogre/OgreImporter.h
            ${assimpDir}/src/code/Ogre/OgreParsingUtils.h
            ${assimpDir}/src/code/Ogre/OgreStructs.h
            ${assimpDir}/src/code/Ogre/OgreXmlSerializer.h
            ${assimpDir}/src/code/OpenGEX/OpenGEXExporter.h
            ${assimpDir}/src/code/OpenGEX/OpenGEXImporter.h
            ${assimpDir}/src/code/OpenGEX/OpenGEXStructs.h
            ${assimpDir}/src/code/Ply/PlyExporter.h
            ${assimpDir}/src/code/Ply/PlyLoader.h
            ${assimpDir}/src/code/Ply/PlyParser.h
            ${assimpDir}/src/code/PostProcessing/CalcTangentsProcess.h
            ${assimpDir}/src/code/PostProcessing/ComputeUVMappingProcess.h
            ${assimpDir}/src/code/PostProcessing/ConvertToLHProcess.h
            ${assimpDir}/src/code/PostProcessing/DeboneProcess.h
            ${assimpDir}/src/code/PostProcessing/DropFaceNormalsProcess.h
            ${assimpDir}/src/code/PostProcessing/EmbedTexturesProcess.h
            ${assimpDir}/src/code/PostProcessing/FindDegenerates.h
            ${assimpDir}/src/code/PostProcessing/FindInstancesProcess.h
            ${assimpDir}/src/code/PostProcessing/FindInvalidDataProcess.h
            ${assimpDir}/src/code/PostProcessing/FixNormalsStep.h
            ${assimpDir}/src/code/PostProcessing/GenBoundingBoxesProcess.h
            ${assimpDir}/src/code/PostProcessing/GenFaceNormalsProcess.h
            ${assimpDir}/src/code/PostProcessing/GenVertexNormalsProcess.h
            ${assimpDir}/src/code/PostProcessing/ImproveCacheLocality.h
            ${assimpDir}/src/code/PostProcessing/JoinVerticesProcess.h
            ${assimpDir}/src/code/PostProcessing/LimitBoneWeightsProcess.h
            ${assimpDir}/src/code/PostProcessing/MakeVerboseFormat.h
            ${assimpDir}/src/code/PostProcessing/OptimizeGraph.h
            ${assimpDir}/src/code/PostProcessing/OptimizeMeshes.h
            ${assimpDir}/src/code/PostProcessing/PretransformVertices.h
            ${assimpDir}/src/code/PostProcessing/ProcessHelper.h
            ${assimpDir}/src/code/PostProcessing/RemoveRedundantMaterials.h
            ${assimpDir}/src/code/PostProcessing/RemoveVCProcess.h
            ${assimpDir}/src/code/PostProcessing/ScaleProcess.h
            ${assimpDir}/src/code/PostProcessing/SortByPTypeProcess.h
            ${assimpDir}/src/code/PostProcessing/SplitLargeMeshes.h
            ${assimpDir}/src/code/PostProcessing/TextureTransform.h
            ${assimpDir}/src/code/PostProcessing/TriangulateProcess.h
            ${assimpDir}/src/code/PostProcessing/ValidateDataStructure.h
            ${assimpDir}/src/code/Q3BSP/Q3BSPFileData.h
            ${assimpDir}/src/code/Q3BSP/Q3BSPFileImporter.h
            ${assimpDir}/src/code/Q3BSP/Q3BSPFileParser.h
            ${assimpDir}/src/code/Q3D/Q3DLoader.h
            ${assimpDir}/src/code/Raw/RawLoader.h
            ${assimpDir}/src/code/SIB/SIBImporter.h
            ${assimpDir}/src/code/SMD/SMDLoader.h
            ${assimpDir}/src/code/STL/STLExporter.h
            ${assimpDir}/src/code/STL/STLLoader.h
            ${assimpDir}/src/code/Step/STEPFile.h
            ${assimpDir}/src/code/Step/StepExporter.h
            ${assimpDir}/src/code/Terragen/TerragenLoader.h
            ${assimpDir}/src/code/Unreal/UnrealLoader.h
            ${assimpDir}/src/code/X/XFileExporter.h
            ${assimpDir}/src/code/X/XFileHelper.h
            ${assimpDir}/src/code/X/XFileImporter.h
            ${assimpDir}/src/code/X/XFileParser.h
            ${assimpDir}/src/code/XGL/XGLLoader.h
            ${assimpDir}/src/code/glTF/glTFAsset.h
            ${assimpDir}/src/code/glTF/glTFAssetWriter.h
            ${assimpDir}/src/code/glTF/glTFCommon.h
            ${assimpDir}/src/code/glTF/glTFExporter.h
            ${assimpDir}/src/code/glTF/glTFImporter.h
            ${assimpDir}/src/code/glTF2/glTF2Asset.h
            ${assimpDir}/src/code/glTF2/glTF2AssetWriter.h
            ${assimpDir}/src/code/glTF2/glTF2Exporter.h
            ${assimpDir}/src/code/glTF2/glTF2Importer.h
            ${assimpDir}/src/code/res/resource.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcAdjacencyInfo.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcArithmeticCodec.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcBinaryStream.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcCommon.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDVEncodeParams.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDynamicVector.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDynamicVectorDecoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDynamicVectorEncoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcFIFO.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcIndexedFaceSet.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcSC3DMCDecoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcSC3DMCEncodeParams.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcSC3DMCEncoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTimer.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTriangleFans.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTriangleListDecoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTriangleListEncoder.h
            ${assimpDir}/src/contrib/Open3DGC/o3dgcVector.h
            ${assimpDir}/src/contrib/clipper/clipper.hpp
            ${assimpDir}/src/contrib/irrXML/CXMLReaderImpl.h
            ${assimpDir}/src/contrib/irrXML/heapsort.h
            ${assimpDir}/src/contrib/irrXML/irrArray.h
            ${assimpDir}/src/contrib/irrXML/irrString.h
            ${assimpDir}/src/contrib/irrXML/irrTypes.h
            ${assimpDir}/src/contrib/irrXML/irrXML.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/DDLNode.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/OpenDDLCommon.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/OpenDDLExport.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/OpenDDLParser.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/OpenDDLParserUtils.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/OpenDDLStream.h
            ${assimpDir}/src/contrib/openddlparser/include/openddlparser/Value.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/common/shapes.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/common/utils.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/poly2tri.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/advancing_front.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/cdt.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/sweep.h
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/sweep_context.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/allocators.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/document.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/encodedstream.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/encodings.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/error/en.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/error/error.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/filereadstream.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/filewritestream.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/fwd.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/biginteger.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/diyfp.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/dtoa.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/ieee754.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/itoa.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/meta.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/pow10.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/regex.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/stack.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/strfunc.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/strtod.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/internal/swap.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/istreamwrapper.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/memorybuffer.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/memorystream.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/msinttypes/inttypes.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/msinttypes/stdint.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/ostreamwrapper.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/pointer.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/prettywriter.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/rapidjson.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/reader.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/schema.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/stream.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/stringbuffer.h
            ${assimpDir}/src/contrib/rapidjson/include/rapidjson/writer.h
            ${assimpDir}/src/contrib/unzip/crypt.h
            ${assimpDir}/src/contrib/unzip/ioapi.h
            ${assimpDir}/src/contrib/unzip/unzip.h
            ${assimpDir}/src/contrib/utf8cpp/source/utf8.h
            ${assimpDir}/src/contrib/utf8cpp/source/utf8/checked.h
            ${assimpDir}/src/contrib/utf8cpp/source/utf8/core.h
            ${assimpDir}/src/contrib/utf8cpp/source/utf8/unchecked.h
            ${assimpDir}/src/include/assimp/Compiler/poppack1.h
            ${assimpDir}/src/include/assimp/Compiler/pstdint.h
            ${assimpDir}/src/include/assimp/Compiler/pushpack1.h
            ${assimpDir}/src/include/assimp/DefaultIOStream.h
            ${assimpDir}/src/include/assimp/DefaultIOSystem.h
            ${assimpDir}/src/include/assimp/DefaultLogger.hpp
            ${assimpDir}/src/include/assimp/Defines.h
            ${assimpDir}/src/include/assimp/Exporter.hpp
            ${assimpDir}/src/include/assimp/IOStream.hpp
            ${assimpDir}/src/include/assimp/IOSystem.hpp
            ${assimpDir}/src/include/assimp/Importer.hpp
            ${assimpDir}/src/include/assimp/LogStream.hpp
            ${assimpDir}/src/include/assimp/Logger.hpp
            ${assimpDir}/src/include/assimp/NullLogger.hpp
            ${assimpDir}/src/include/assimp/ProgressHandler.hpp
            ${assimpDir}/src/include/assimp/SceneCombiner.h
            ${assimpDir}/src/include/assimp/ai_assert.h
            ${assimpDir}/src/include/assimp/anim.h
            ${assimpDir}/src/include/assimp/camera.h
            ${assimpDir}/src/include/assimp/cexport.h
            ${assimpDir}/src/include/assimp/cfileio.h
            ${assimpDir}/src/include/assimp/cimport.h
            ${assimpDir}/src/include/assimp/color4.h
            ${assimpDir}/src/include/assimp/config.h
            ${assimpDir}/src/include/assimp/defs.h
            ${assimpDir}/src/include/assimp/importerdesc.h
            ${assimpDir}/src/include/assimp/light.h
            ${assimpDir}/src/include/assimp/material.h
            ${assimpDir}/src/include/assimp/matrix3x3.h
            ${assimpDir}/src/include/assimp/matrix4x4.h
            ${assimpDir}/src/include/assimp/mesh.h
            ${assimpDir}/src/include/assimp/metadata.h
            ${assimpDir}/src/include/assimp/port/AndroidJNI/AndroidJNIIOSystem.h
            ${assimpDir}/src/include/assimp/postprocess.h
            ${assimpDir}/src/include/assimp/quaternion.h
            ${assimpDir}/src/include/assimp/scene.h
            ${assimpDir}/src/include/assimp/texture.h
            ${assimpDir}/src/include/assimp/types.h
            ${assimpDir}/src/include/assimp/vector2.h
            ${assimpDir}/src/include/assimp/vector3.h
            ${assimpDir}/src/include/assimp/version.h
            ${assimpDir}/src/code/Common/Assimp.cpp
            ${assimpDir}/src/code/Common/DefaultLogger.cpp
            ${assimpDir}/src/code/Common/BaseImporter.cpp
            ${assimpDir}/src/code/Common/BaseProcess.cpp
            ${assimpDir}/src/code/Common/PostStepRegistry.cpp
            ${assimpDir}/src/code/Common/ImporterRegistry.cpp
            ${assimpDir}/src/code/Common/DefaultIOStream.cpp
            ${assimpDir}/src/code/Common/DefaultIOSystem.cpp
            ${assimpDir}/src/code/CApi/CInterfaceIOWrapper.cpp
            ${assimpDir}/src/code/Common/Importer.cpp
            ${assimpDir}/src/code/Common/SGSpatialSort.cpp
            ${assimpDir}/src/code/Common/VertexTriangleAdjacency.cpp
            ${assimpDir}/src/code/Common/SpatialSort.cpp
            ${assimpDir}/src/code/Common/SceneCombiner.cpp
            ${assimpDir}/src/code/Common/ScenePreprocessor.cpp
            ${assimpDir}/src/code/Common/SkeletonMeshBuilder.cpp
            ${assimpDir}/src/code/Common/SplitByBoneCountProcess.cpp
            ${assimpDir}/src/code/Common/StandardShapes.cpp
            ${assimpDir}/src/code/Common/TargetAnimation.cpp
            ${assimpDir}/src/code/Common/RemoveComments.cpp
            ${assimpDir}/src/code/Common/Subdivision.cpp
            ${assimpDir}/src/code/Common/scene.cpp
            ${assimpDir}/src/code/Common/Bitmap.cpp
            ${assimpDir}/src/code/Common/Version.cpp
            ${assimpDir}/src/code/Common/CreateAnimMesh.cpp
            ${assimpDir}/src/code/Common/simd.cpp
            ${assimpDir}/src/code/Common/ZipArchiveIOSystem.cpp
            ${assimpDir}/src/code/Collada/ColladaLoader.cpp
            ${assimpDir}/src/code/Collada/ColladaParser.cpp
            ${assimpDir}/src/code/Material/MaterialSystem.cpp
            ${assimpDir}/src/code/Obj/ObjFileImporter.cpp
            ${assimpDir}/src/code/Obj/ObjFileMtlImporter.cpp
            ${assimpDir}/src/code/Obj/ObjFileParser.cpp
            ${assimpDir}/src/code/Blender/BlenderLoader.cpp
            ${assimpDir}/src/code/Blender/BlenderDNA.cpp
            ${assimpDir}/src/code/Blender/BlenderScene.cpp
            ${assimpDir}/src/code/Blender/BlenderModifier.cpp
            ${assimpDir}/src/code/Blender/BlenderBMesh.cpp
            ${assimpDir}/src/code/Blender/BlenderTessellator.cpp
            ${assimpDir}/src/code/Blender/BlenderCustomData.cpp
            ${assimpDir}/src/code/FBX/FBXImporter.cpp
            ${assimpDir}/src/code/FBX/FBXParser.cpp
            ${assimpDir}/src/code/FBX/FBXTokenizer.cpp
            ${assimpDir}/src/code/FBX/FBXConverter.cpp
            ${assimpDir}/src/code/FBX/FBXUtil.cpp
            ${assimpDir}/src/code/FBX/FBXDocument.cpp
            ${assimpDir}/src/code/FBX/FBXProperties.cpp
            ${assimpDir}/src/code/FBX/FBXMeshGeometry.cpp
            ${assimpDir}/src/code/FBX/FBXMaterial.cpp
            ${assimpDir}/src/code/FBX/FBXModel.cpp
            ${assimpDir}/src/code/FBX/FBXAnimation.cpp
            ${assimpDir}/src/code/FBX/FBXNodeAttribute.cpp
            ${assimpDir}/src/code/FBX/FBXDeformer.cpp
            ${assimpDir}/src/code/FBX/FBXBinaryTokenizer.cpp
            ${assimpDir}/src/code/FBX/FBXDocumentUtil.cpp
            ${assimpDir}/src/code/PostProcessing/CalcTangentsProcess.cpp
            ${assimpDir}/src/code/PostProcessing/ComputeUVMappingProcess.cpp
            ${assimpDir}/src/code/PostProcessing/ConvertToLHProcess.cpp
            ${assimpDir}/src/code/PostProcessing/EmbedTexturesProcess.cpp
            ${assimpDir}/src/code/PostProcessing/FindDegenerates.cpp
            ${assimpDir}/src/code/PostProcessing/FindInstancesProcess.cpp
            ${assimpDir}/src/code/PostProcessing/FindInvalidDataProcess.cpp
            ${assimpDir}/src/code/PostProcessing/FixNormalsStep.cpp
            ${assimpDir}/src/code/PostProcessing/DropFaceNormalsProcess.cpp
            ${assimpDir}/src/code/PostProcessing/GenBoundingBoxesProcess.cpp
            ${assimpDir}/src/code/PostProcessing/GenFaceNormalsProcess.cpp
            ${assimpDir}/src/code/PostProcessing/GenVertexNormalsProcess.cpp
            ${assimpDir}/src/code/PostProcessing/PretransformVertices.cpp
            ${assimpDir}/src/code/PostProcessing/ImproveCacheLocality.cpp
            ${assimpDir}/src/code/PostProcessing/JoinVerticesProcess.cpp
            ${assimpDir}/src/code/PostProcessing/LimitBoneWeightsProcess.cpp
            ${assimpDir}/src/code/PostProcessing/RemoveRedundantMaterials.cpp
            ${assimpDir}/src/code/PostProcessing/RemoveVCProcess.cpp
            ${assimpDir}/src/code/PostProcessing/SortByPTypeProcess.cpp
            ${assimpDir}/src/code/PostProcessing/SplitLargeMeshes.cpp
            ${assimpDir}/src/code/PostProcessing/TextureTransform.cpp
            ${assimpDir}/src/code/PostProcessing/TriangulateProcess.cpp
            ${assimpDir}/src/code/PostProcessing/ValidateDataStructure.cpp
            ${assimpDir}/src/code/PostProcessing/OptimizeGraph.cpp
            ${assimpDir}/src/code/PostProcessing/OptimizeMeshes.cpp
            ${assimpDir}/src/code/PostProcessing/DeboneProcess.cpp
            ${assimpDir}/src/code/PostProcessing/ProcessHelper.cpp
            ${assimpDir}/src/code/PostProcessing/MakeVerboseFormat.cpp
            ${assimpDir}/src/code/PostProcessing/ScaleProcess.cpp
            ${assimpDir}/src/code/glTF/glTFImporter.cpp
            ${assimpDir}/src/code/glTF/glTFCommon.cpp
            ${assimpDir}/src/code/glTF2/glTF2Importer.cpp
            ${assimpDir}/src/contrib/Open3DGC/o3dgcArithmeticCodec.cpp
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDynamicVectorDecoder.cpp
            ${assimpDir}/src/contrib/Open3DGC/o3dgcDynamicVectorEncoder.cpp
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTools.cpp
            ${assimpDir}/src/contrib/Open3DGC/o3dgcTriangleFans.cpp
            ${assimpDir}/src/contrib/clipper/clipper.cpp
            ${assimpDir}/src/contrib/irrXML/irrXML.cpp
            ${assimpDir}/src/contrib/openddlparser/code/DDLNode.cpp
            ${assimpDir}/src/contrib/openddlparser/code/OpenDDLCommon.cpp
            ${assimpDir}/src/contrib/openddlparser/code/OpenDDLExport.cpp
            ${assimpDir}/src/contrib/openddlparser/code/OpenDDLParser.cpp
            ${assimpDir}/src/contrib/openddlparser/code/OpenDDLStream.cpp
            ${assimpDir}/src/contrib/openddlparser/code/Value.cpp
            ${assimpDir}/src/contrib/poly2tri/poly2tri/common/shapes.cc
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/advancing_front.cc
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/cdt.cc
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/sweep.cc
            ${assimpDir}/src/contrib/poly2tri/poly2tri/sweep/sweep_context.cc
            ${assimpDir}/src/contrib/unzip/ioapi.c
            ${assimpDir}/src/contrib/unzip/unzip.c
            ${assimpDir}/src/contrib/zip/src/zip.c
        DEFINES
            ASSIMP_BUILD_BOOST_WORKAROUND
            ASSIMP_BUILD_NO_3DS_IMPORTER
            ASSIMP_BUILD_NO_3D_IMPORTER
            ASSIMP_BUILD_NO_3MF_IMPORTER
            ASSIMP_BUILD_NO_AC_IMPORTER
            ASSIMP_BUILD_NO_AMF_IMPORTER
            ASSIMP_BUILD_NO_ASE_IMPORTER
            ASSIMP_BUILD_NO_ASSBIN_IMPORTER
            ASSIMP_BUILD_NO_B3D_IMPORTER
            ASSIMP_BUILD_NO_BVH_IMPORTER
            ASSIMP_BUILD_NO_C4D_IMPORTER
            ASSIMP_BUILD_NO_COB_IMPORTER
            ASSIMP_BUILD_NO_COMPRESSED_IFC
            ASSIMP_BUILD_NO_CSM_IMPORTER
            ASSIMP_BUILD_NO_DXF_IMPORTER
            ASSIMP_BUILD_NO_EXPORT
            ASSIMP_BUILD_NO_HMP_IMPORTER
            ASSIMP_BUILD_NO_IFC_IMPORTER
            ASSIMP_BUILD_NO_IRRMESH_IMPORTER
            ASSIMP_BUILD_NO_IRR_IMPORTER
            ASSIMP_BUILD_NO_LWO_IMPORTER
            ASSIMP_BUILD_NO_LWS_IMPORTER
            ASSIMP_BUILD_NO_MD2_IMPORTER
            ASSIMP_BUILD_NO_MD3_IMPORTER
            ASSIMP_BUILD_NO_MD5_IMPORTER
            ASSIMP_BUILD_NO_MDC_IMPORTER
            ASSIMP_BUILD_NO_MDL_IMPORTER
            ASSIMP_BUILD_NO_MMD_IMPORTER
            ASSIMP_BUILD_NO_MS3D_IMPORTER
            ASSIMP_BUILD_NO_NDO_IMPORTER
            ASSIMP_BUILD_NO_NFF_IMPORTER
            ASSIMP_BUILD_NO_OFF_IMPORTER
            ASSIMP_BUILD_NO_OGRE_IMPORTER
            ASSIMP_BUILD_NO_OPENGEX_IMPORTER
            ASSIMP_BUILD_NO_OWN_ZLIB
            ASSIMP_BUILD_NO_PLY_IMPORTER
            ASSIMP_BUILD_NO_Q3BSP_IMPORTER
            ASSIMP_BUILD_NO_Q3D_IMPORTER
            ASSIMP_BUILD_NO_RAW_IMPORTER
            ASSIMP_BUILD_NO_SIB_IMPORTER
            ASSIMP_BUILD_NO_SMD_IMPORTER
            ASSIMP_BUILD_NO_STEP_IMPORTER
            ASSIMP_BUILD_NO_STL_IMPORTER
            ASSIMP_BUILD_NO_TERRAGEN_IMPORTER
            ASSIMP_BUILD_NO_X3D_IMPORTER
            ASSIMP_BUILD_NO_XGL_IMPORTER
            ASSIMP_BUILD_NO_X_IMPORTER
            OPENDDL_STATIC_LIBARY
            NOUNCRYPT
        INCLUDE_DIRECTORIES
            ${assimpDir}
            ${assimpDir}/..
            ${assimpDir}/contrib/unzip
            ${assimpDir}/src
            ${assimpDir}/src/code
            ${assimpDir}/src/code/Blender
            ${assimpDir}/src/code/CApi
            ${assimpDir}/src/code/Collada
            ${assimpDir}/src/code/Common
            ${assimpDir}/src/code/FBX
            ${assimpDir}/src/code/Material
            ${assimpDir}/src/code/Obj
            ${assimpDir}/src/code/PostProcessing
            ${assimpDir}/src/code/glTF
            ${assimpDir}/src/code/glTF2
            ${assimpDir}/src/contrib/irrXML
            ${assimpDir}/src/contrib/openddlparser/include
            ${assimpDir}/src/contrib/poly2tri
            ${assimpDir}/src/contrib/rapidjson/include
            ${assimpDir}/src/contrib/utf8cpp/source
            ${assimpDir}/src/include
            ${assimpDir}/src/include/assimp/Compiler
            ${assimpDir}/unzip
    )

    qt_extend_target(${target} CONDITION CMAKE_BUILD_TYPE STREQUAL Debug AND (CMAKE_CROSSCOMPILING OR NOT QT_FEATURE_system_assimp) AND (host_build OR NOT QT_FEATURE_system_assimp)
        DEFINES
            _DEBUG
    )

    qt_extend_target(${target} CONDITION WIN32 AND (CMAKE_CROSSCOMPILING OR NOT QT_FEATURE_system_assimp) AND (host_build OR NOT QT_FEATURE_system_assimp)
        DEFINES
            _CRT_SECURE_NO_WARNINGS
    )

    qt_extend_target(${target} CONDITION QT_FEATURE_system_zlib AND NOT QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        LIBRARIES
            ZLIB::ZLIB
    )

    qt_extend_target(${target} CONDITION (CMAKE_CROSSCOMPILING OR NOT QT_FEATURE_system_assimp) AND (CMAKE_CROSSCOMPILING OR NOT QT_FEATURE_system_zlib) AND (host_build OR NOT QT_FEATURE_system_assimp) AND (host_build OR NOT QT_FEATURE_system_zlib)
        LIBRARIES
            Qt::ZlibPrivate
    )

    # special case begin
    qt_extend_target(${target} CONDITION ICC AND NOT QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        COMPILE_OPTIONS
            "-wd310" "-wd68" "-wd858"
    )

    qt_extend_target(${target} CONDITION (GCC OR CLANG) AND NOT QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        COMPILE_OPTIONS
            "-Wno-ignored-qualifiers"
            "-Wno-unused-parameter"
            "-Wno-unused-variable"
            "-Wno-deprecated-declarations"
            "-Wno-unused-function"
            "-Wno-reorder"
    )

    qt_extend_target(${target} CONDITION MSVC AND NOT QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        COMPILE_OPTIONS
            "-wd4100"
            "-wd4189"
            "-wd4267"
            "-wd4996"
            "-wd4828"
    )

    qt_extend_target(${target} CONDITION CLANG AND NOT QT_FEATURE_system_assimp AND (NOT CMAKE_CROSSCOMPILING OR NOT host_build)
        COMPILE_OPTIONS
            "-Wno-unused-private-field"
    )
    # special case end

    qt_extend_target(${target} CONDITION MSVC AND (CMAKE_CROSSCOMPILING OR NOT QT_FEATURE_system_assimp) AND (host_build OR NOT QT_FEATURE_system_assimp)
        DEFINES
            _CRT_SECURE_NO_WARNINGS
            _SCL_SECURE_NO_WARNINGS
        COMPILE_OPTIONS
            /bigobj
    )
endfunction()
