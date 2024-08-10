.class public Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;
.super Ljava/lang/Object;
.source "ARSyncEphemerisUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARSyncEphemerisUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static uploadEphemerisWifiSync(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5FileName"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 53
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v4, 0x0

    .line 56
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_0
    new-instance v5, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v5, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    sget-object v7, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_GENERIC:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v5, p0, p1, v6, v7}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 58
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v6, :cond_1

    .line 60
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "failed to init ftp"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 67
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :goto_0
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARUTILS_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4, p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 74
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 62
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    invoke-static {v6, v7, p2, p3, p4}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 71
    if-eqz v5, :cond_3

    .line 73
    invoke-virtual {v5, p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 74
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1

    .line 71
    .end local v2    # "error":I
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v4, p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 74
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    :cond_2
    throw v6

    .line 71
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_2

    .line 65
    :catch_1
    move-exception v1

    goto :goto_0

    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v2    # "error":I
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_3
    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1
.end method
