# Only use this on the device or emulator.
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
    DiagnosticCommonKinds.inc

clang_index_SRC_FILES :=	\
	ASTLocation.cpp	\
	Analyzer.cpp	\
	CallGraph.cpp	\
	DeclReferenceMap.cpp	\
	Entity.cpp	\
	GlobalSelector.cpp	\
	Handlers.cpp	\
	IndexProvider.cpp	\
	Indexer.cpp	\
	Program.cpp	\
	ResolveLocation.cpp	\
	SelectorMap.cpp

LOCAL_SRC_FILES := $(clang_index_SRC_FILES)

LOCAL_MODULE:= libclangIndex

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

endif
