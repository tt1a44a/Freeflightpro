.class public Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;
.super Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;
.source "AssetEmbeddedFirmwareCopyTask.java"


# static fields
.field private static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 17
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sdkPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "firmwareFolder"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "forceCopy"    # Z

    .prologue
    .line 66
    new-instance v3, Ljava/io/File;

    const-string v13, "plfFolder"

    move-object/from16 v0, p4

    invoke-direct {v3, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v3, "copiedPlfFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, "copiedEmbeddedFirmwares":[Ljava/io/File;
    if-nez p5, :cond_0

    if-eqz v2, :cond_0

    array-length v13, v2

    if-nez v13, :cond_2

    .line 70
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->getAvailablePlf(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 72
    .local v6, "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 74
    .local v8, "plfFullPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, "plfFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v9, "plfProductFolder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 78
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".tgz"

    const-string v16, ".tar.gz"

    .line 79
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "firmwareFilename":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    .end local v7    # "plfFile":Ljava/io/File;
    invoke-direct {v7, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .restart local v7    # "plfFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v7}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->writePlfFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V

    .line 82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 83
    .local v11, "productId":I
    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v10

    .line 84
    .local v10, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "version":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->saveEmbeddedVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V

    .line 88
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v1, v7}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->copyPlfIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 91
    .end local v4    # "firmwareFilename":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "plfFile":Ljava/io/File;
    .end local v8    # "plfFullPath":Ljava/lang/String;
    .end local v9    # "plfProductFolder":Ljava/io/File;
    .end local v10    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v11    # "productId":I
    .end local v12    # "version":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getAvailablePlf(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "plfFolders":[Ljava/lang/String;
    array-length v10, v3

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v4, v3, v9

    .line 99
    .local v4, "subfolder":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "subfolderPath":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "subfolderFiles":[Ljava/lang/String;
    array-length v11, v5

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_1

    aget-object v2, v5, v7

    .line 102
    .local v2, "plf":Ljava/lang/String;
    const-string v12, ".plf"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ".tar"

    .line 103
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ".tar.gz"

    .line 104
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ".tgz"

    .line 105
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 106
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "plf":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 101
    .restart local v2    # "plf":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    .end local v2    # "plf":Ljava/lang/String;
    .end local v3    # "plfFolders":[Ljava/lang/String;
    .end local v4    # "subfolder":Ljava/lang/String;
    .end local v5    # "subfolderFiles":[Ljava/lang/String;
    .end local v6    # "subfolderPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return-object v1
.end method

.method private writePlfFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "plfFullPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "plfFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 121
    invoke-virtual {p0, v1, p3}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->copyPlf(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-eqz v1, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v2

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_1
    :goto_1
    throw v2

    .line 128
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
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "app_version"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 30
    .local v8, "savedAppVersion":I
    const/4 v6, 0x0

    .line 32
    .local v6, "currentAppVersion":I
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    if-eq v6, v8, :cond_0

    const/4 v5, 0x1

    .line 38
    .local v5, "versionUpdated":Z
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 40
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const-string v2, "embedded_firmware"

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    move-object v0, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 43
    const-string v2, "embedded_trampoline_firmware"

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedTrampolineFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    move-object v0, p0

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->checkMultiplePlfsInPlfFolders(Landroid/content/Context;)V

    .line 49
    if-eqz v5, :cond_1

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/AssetEmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "app_version"

    .line 51
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 33
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "versionUpdated":Z
    :catch_0
    move-exception v7

    .line 34
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
