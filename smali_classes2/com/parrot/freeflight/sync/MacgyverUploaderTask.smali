.class public Lcom/parrot/freeflight/sync/MacgyverUploaderTask;
.super Landroid/os/AsyncTask;
.source "MacgyverUploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTROLLER_MODEL:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final CONTROLLER_TYPE:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final INVALID_LOCATION:D = 500.0

.field private static final MACGYVER_DIRECTORY:Ljava/lang/String; = "ACADEMY"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final MACGYVER_FILES_FOLDER:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MacgyverUploaderTask"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->CONTROLLER_MODEL:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->CONTROLLER_TYPE:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACADEMY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "externalFolder":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 45
    .local v1, "preCondition":Z
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sput-object v0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->MACGYVER_FILES_FOLDER:Ljava/lang/String;

    .line 52
    :goto_1
    return-void

    .line 43
    .end local v1    # "preCondition":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    .restart local v1    # "preCondition":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACADEMY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->MACGYVER_FILES_FOLDER:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;-><init>(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    return-object v0
.end method

.method private clean()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->dispose()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "MacgyverUploaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->cancelThread()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 146
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->cancel(Z)Z

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->getUploaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 113
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->clean()V

    .line 122
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->clean()V

    .line 128
    return-void
.end method

.method protected onPreExecute()V
    .locals 12

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 90
    const-string v1, "MacgyverUploaderTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreExecute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 93
    .local v3, "appVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v11

    .line 94
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 95
    .local v6, "latitude":D
    :goto_0
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 96
    .local v8, "longitude":D
    :cond_0
    new-instance v1, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    sget-object v2, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->MACGYVER_FILES_FOLDER:Ljava/lang/String;

    sget-object v4, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->CONTROLLER_MODEL:Ljava/lang/String;

    sget-object v5, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->CONTROLLER_TYPE:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/parrot/arsdk/arsync/ARSyncMacgyverListener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    .line 98
    iget-object v2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/parrot/arsdk/arsync/ARSyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mARSyncMacgyverUploader:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->pause()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v3    # "appVersion":Ljava/lang/String;
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v11    # "location":Landroid/location/Location;
    :goto_1
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 106
    return-void

    .restart local v3    # "appVersion":Ljava/lang/String;
    .restart local v11    # "location":Landroid/location/Location;
    :cond_1
    move-wide v6, v8

    .line 94
    goto :goto_0

    .line 100
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Lcom/parrot/arsdk/arsync/ARSyncException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    .end local v3    # "appVersion":Ljava/lang/String;
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v11    # "location":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method
