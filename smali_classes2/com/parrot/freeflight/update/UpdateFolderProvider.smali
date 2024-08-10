.class public Lcom/parrot/freeflight/update/UpdateFolderProvider;
.super Ljava/lang/Object;
.source "UpdateFolderProvider.java"


# static fields
.field public static final ASSET_FOLDER:Ljava/lang/String; = "embedded_firmware"

.field public static final ASSET_TRAMPOLINE_FOLDER:Ljava/lang/String; = "embedded_trampoline_firmware"

.field private static final EMBEDDED_FIRMWARE_FOLDER:Ljava/lang/String; = "embedded_firmware"

.field private static final EMBEDDED_TRAMPOLINE_FIRMWARE_FOLDER:Ljava/lang/String; = "embedded_trampoline_firmware"

.field public static final OBB_FOLDER:Ljava/lang/String; = "plfFolder"

.field public static final OBB_TRAMPOLINE_FOLDER:Ljava/lang/String; = "mandatoryFolder"

.field public static final PLF_FOLDER:Ljava/lang/String; = "plfFolder"

.field private static final TRAMPOLINE_SUB_PATH:Ljava/lang/String; = "trampoline"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMultiplePlfsInPlfFolders(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    .line 65
    invoke-static {p0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "plfFolder"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-instance v5, Ljava/io/File;

    .line 66
    invoke-static {p0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "plfFolder"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    .line 68
    .local v1, "plfFolders":[Ljava/io/File;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 69
    .local v0, "plfFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v2, v7, v3

    .line 71
    .local v2, "productFolder":Ljava/io/File;
    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->checkMultiplePlfsInProductFolder(Ljava/io/File;)V

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "productFolder":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 75
    .end local v0    # "plfFolder":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static checkMultiplePlfsInProductFolder(Ljava/io/File;)V
    .locals 8
    .param p0, "productFolder"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "higherVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, "higherVersionFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v2, v5, v4

    .line 87
    .local v2, "plfFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "version":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 89
    if-eqz v0, :cond_0

    invoke-static {v3, v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 90
    :cond_0
    move-object v0, v3

    .line 91
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 94
    :cond_1
    move-object v1, v2

    .line 86
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 100
    .end local v2    # "plfFile":Ljava/io/File;
    .end local v3    # "version":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static getEmbeddedFirmwareFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    const-string v0, "embedded_firmware"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedTrampolineFirmwareFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    const-string v0, "embedded_trampoline_firmware"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "trampoline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
