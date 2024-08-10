.class public Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;
.super Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;
.source "ObbEmbeddedFirmwareCopyTask.java"


# static fields
.field private static final KEY_OBB_VERSION:Ljava/lang/String; = "obb_version"

.field private static final STR_TO_HEX:Ljava/lang/String; = "0x"

.field private static final ZIPFILE_CONTENT_PATH_FOLDER_INDEX:I = 0x1

.field private static final ZIPFILE_CONTENT_PATH_LENGTH:I = 0x3

.field private static final ZIPFILE_CONTENT_PATH_PLF_INDEX:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private extractAndCopyPlfIfNeeded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "obbFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firmwareFolder"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "finalFolderPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "forceCopy"    # Z

    .prologue
    .line 65
    new-instance v6, Ljava/io/File;

    const-string v14, "plfFolder"

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v6, "firmwarePlfFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 68
    .local v7, "firmwarePlfList":[Ljava/io/File;
    if-nez p4, :cond_0

    if-eqz v7, :cond_0

    array-length v14, v7

    if-nez v14, :cond_5

    .line 71
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    const v15, 0x2fe15fa

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v4

    .line 73
    .local v4, "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    if-eqz v4, :cond_5

    .line 75
    invoke-virtual {v4}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v3

    .line 76
    .local v3, "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    if-eqz v3, :cond_5

    .line 77
    array-length v15, v3

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_5

    aget-object v12, v3, v14

    .line 79
    .local v12, "zipFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ".plf"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ".tar"

    .line 85
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ".tar.gz"

    .line 86
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 92
    :cond_3
    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "zipFilePath":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 99
    new-instance v8, Ljava/io/File;

    const/16 v16, 0x1

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-direct {v8, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v8, "plfProductFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 101
    new-instance v5, Ljava/io/File;

    const/16 v16, 0x2

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-direct {v5, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v5, "firmwarePlfFile":Ljava/io/File;
    iget-object v0, v12, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1, v5}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->extractPlfToFirmwareFolder(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;Ljava/io/File;)V

    .line 106
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 107
    .local v10, "productId":I
    invoke-static {v10}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    .line 108
    .local v9, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "version":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->saveEmbeddedVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V

    .line 112
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1, v5}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->copyPlfIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 116
    .end local v3    # "entries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v4    # "expansionFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .end local v5    # "firmwarePlfFile":Ljava/io/File;
    .end local v8    # "plfProductFolder":Ljava/io/File;
    .end local v9    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v10    # "productId":I
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "zipFile":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v13    # "zipFilePath":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    return-void
.end method

.method private extractPlfToFirmwareFolder(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "expansionFile"    # Lcom/android/vending/expansion/zipfile/ZipResourceFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "plfPathInExpansionFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "plfPathInFirmwareFolder"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 126
    invoke-virtual {p0, v1, p3}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->copyPlf(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v1, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v1, :cond_0

    .line 132
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v2

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 132
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    :cond_1
    :goto_1
    throw v2

    .line 133
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "obb_version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, "savedObbVersion":I
    const v0, 0x2fe15fa

    .line 35
    .local v0, "currentObbVersion":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    .line 37
    .local v2, "versionUpdated":Z
    :cond_0
    const-string v3, "plfFolder"

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {v5}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->extractAndCopyPlfIfNeeded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 40
    const-string v3, "mandatoryFolder"

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedTrampolineFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v5}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->extractAndCopyPlfIfNeeded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 44
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->checkMultiplePlfsInPlfFolders(Landroid/content/Context;)V

    .line 46
    if-eqz v2, :cond_1

    .line 47
    iget-object v3, p0, Lcom/parrot/freeflight/update/task/ObbEmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "obb_version"

    .line 48
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 49
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
