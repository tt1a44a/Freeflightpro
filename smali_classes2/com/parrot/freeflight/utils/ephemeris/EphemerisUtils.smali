.class public Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;
.super Ljava/lang/Object;
.source "EphemerisUtils.java"


# static fields
.field private static final EPHEMERIS_DOWNLOAD_VALID_DURATION_IN_SEC:J = 0x14997000L

.field private static final EPHEMERIS_FILENAME:Ljava/lang/String; = "ephemeris.bin"

.field private static final EPHEMERIS_FILENAME_BEBOP:Ljava/lang/String; = "eRide_data.bin"

.field private static final EPHEMERIS_FOLDER:Ljava/lang/String; = "ephemeris"

.field private static final EPHEMERIS_MD5_FILENAME:Ljava/lang/String; = "ephemeris.bin.md5"

.field private static final EPHEMERIS_MD5_FILENAME_BEBOP:Ljava/lang/String; = "eRide_data.bin.md5"

.field private static final SHARED_PREF_LAST_EPHEMERIS_DOWNLOAD:Ljava/lang/String; = "last_download"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "ephemeris"

.field private static final SHARED_PREF_SERIALS_EPHEMERIS_UPLOADED_ALERT:Ljava/lang/String; = "ephemeris_uploaded_serials"

.field private static final TAG:Ljava/lang/String; = "GPSEphemerisUtils"

.field private static final TIME_BEFORE_UPDATING_EPHEMERIS_IN_MSEC:J = 0xa4cb800L

.field private static final sEphemerisUploadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->sEphemerisUploadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSerialToUploadedEphemeris(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    const-string v3, "ephemeris"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "ephemeris_uploaded_serials"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 98
    .local v2, "serials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v0, "newSerials":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ephemeris_uploaded_serials"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void

    .line 98
    .end local v0    # "newSerials":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static downloadGPSEphemeris(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ephemeris"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "rootPath":Ljava/lang/String;
    new-instance v5, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;

    const-string v6, "ephemeris.bin"

    const-string v7, "ephemeris.bin.md5"

    invoke-direct {v5, v3, v6, v7}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->downloadEphemerisSync()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v2

    .line 56
    .local v2, "resultEphOther":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const-string v5, "GPSEphemerisUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadGPSEphemeris "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v5, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-ne v2, v5, :cond_0

    .line 58
    const-string v5, "ephemeris"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "last_download"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v4, "ephemeris_uploaded_serials"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    const/4 v4, 0x1

    .line 65
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return v4
.end method

.method public static isEphemerisDownloadNeeded(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v4, "ephemeris"

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "last_download"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 46
    .local v2, "timeSinceLastUpdate":J
    const-wide/32 v4, 0xa4cb800

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isEphemerisUploadNeeded(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    const-string v9, "ephemeris"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    .local v2, "currentDate":J
    const-wide/16 v6, -0x1

    .line 109
    .local v6, "previousDate":J
    :try_start_0
    const-string v9, "last_download"

    const-wide/16 v10, -0x1

    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 113
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_1

    sub-long v10, v2, v6

    const-wide/32 v12, 0x14997000

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    const/4 v0, 0x1

    .line 114
    .local v0, "canUpdate":Z
    :goto_1
    const-string v9, "ephemeris_uploaded_serials"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    .line 116
    .local v8, "serials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 117
    .local v5, "ret":Z
    :goto_2
    const-string v9, "GPSEphemerisUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isEphemerisUploadNeeded for serial: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v5

    .line 110
    .end local v0    # "canUpdate":Z
    .end local v5    # "ret":Z
    .end local v8    # "serials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v9, "GPSEphemerisUtils"

    const-string v10, "error in pref file when trying to get previous date"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    .restart local v0    # "canUpdate":Z
    .restart local v8    # "serials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static uploadGpsEphemerisSync(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    sget-object v4, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->sEphemerisUploadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 71
    :try_start_0
    invoke-static {p0, p2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->isEphemerisUploadNeeded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ephemeris"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "ephemerisFolder":Ljava/lang/String;
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 74
    .local v2, "result":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 77
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v3, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 82
    const-string v3, "ephemeris.bin"

    const-string v5, "ephemeris.bin.md5"

    invoke-static {p0, p1, v0, v3, v5}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->uploadEphemerisWifiSync(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v2

    .line 86
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    :goto_0
    sget-object v3, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-ne v2, v3, :cond_1

    .line 87
    invoke-static {p0, p2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->addSerialToUploadedEphemeris(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    :cond_1
    const-string v3, "GPSEphemerisUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadGpsEphemerisSync result = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "ephemerisFolder":Ljava/lang/String;
    .end local v2    # "result":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :cond_2
    monitor-exit v4

    .line 92
    return-void

    .line 79
    .restart local v0    # "ephemerisFolder":Ljava/lang/String;
    .restart local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .restart local v2    # "result":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :pswitch_0
    const-string v3, "eRide_data.bin"

    const-string v5, "eRide_data.bin.md5"

    invoke-static {p0, p1, v0, v3, v5}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->uploadEphemerisWifiSync(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v2

    .line 80
    goto :goto_0

    .line 91
    .end local v0    # "ephemerisFolder":Ljava/lang/String;
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v2    # "result":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
