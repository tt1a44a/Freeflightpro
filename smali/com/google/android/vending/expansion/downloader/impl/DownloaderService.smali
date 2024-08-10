.class public abstract Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOADS_CHANGED:Ljava/lang/String; = "downloadsChanged"

.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_STATUS:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_STATUS"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DOWNLOAD_REQUIRED:I = 0x2

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "downloadId"

.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final EXTRA_MESSAGE_HANDLER:Ljava/lang/String; = "EMH"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EPN"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "EPI"

.field public static final EXTRA_STATUS_CURRENT_FILE_SIZE:Ljava/lang/String; = "CFS"

.field public static final EXTRA_STATUS_CURRENT_PROGRESS:Ljava/lang/String; = "CFP"

.field public static final EXTRA_STATUS_STATE:Ljava/lang/String; = "ESS"

.field public static final EXTRA_STATUS_TOTAL_PROGRESS:Ljava/lang/String; = "TFP"

.field public static final EXTRA_STATUS_TOTAL_SIZE:Ljava/lang/String; = "ETS"

.field private static final LOG_TAG:Ljava/lang/String; = "LVLDL"

.field public static final LVL_CHECK_REQUIRED:I = 0x1

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3

.field public static final NETWORK_WIFI:I = 0x2

.field public static final NO_DOWNLOAD_REQUIRED:I = 0x0

.field private static final SMOOTHING_FACTOR:F = 0.005f

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_DELIVERED_INCORRECTLY:I = 0x1e7

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc5

.field public static final STATUS_QUEUED_FOR_WIFI_OR_CELLULAR_PERMISSION:I = 0xc4

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field private static final TEMP_EXT:Ljava/lang/String; = ".tmp"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field private static sIsRunning:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field mAverageDownloadSpeed:F

.field mBytesAtSample:J

.field mBytesSoFar:J

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mControl:I

.field mFileCount:I

.field private mIsAtLeast3G:Z

.field private mIsAtLeast4G:Z

.field private mIsCellularConnection:Z

.field private mIsConnected:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field mMillisecondsAtSample:J

.field private mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private final mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mStateChanged:Z

.field private mStatus:I

.field mTotalLength:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "LVLDownloadService"

    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 450
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isServiceRunning()Z

    move-result v0

    return v0
.end method

.method private cancelAlarms()V
    .locals 3

    .prologue
    .line 967
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 968
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 969
    .local v0, "alarms":Landroid/app/AlarmManager;
    if-nez v0, :cond_1

    .line 970
    const-string v1, "LVLDL"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v0    # "alarms":Landroid/app/AlarmManager;
    :cond_0
    :goto_0
    return-void

    .line 973
    .restart local v0    # "alarms":Landroid/app/AlarmManager;
    :cond_1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 974
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method private static isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 605
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v0, v1, :cond_0

    .line 606
    const/4 v0, 0x1

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized isServiceRunning()Z
    .locals 2

    .prologue
    .line 617
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 172
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 187
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 165
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 151
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 179
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 158
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .param p1, "wakeUp"    # J

    .prologue
    const/4 v6, 0x0

    .line 943
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 944
    .local v0, "alarms":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 945
    const-string v3, "LVLDL"

    const-string v4, "couldn\'t get alarm manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_0
    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getAlarmReceiverClassName()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "EPI"

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 960
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static declared-synchronized setServiceRunning(Z)V
    .locals 2
    .param p0, "isRunning"    # Z

    .prologue
    .line 621
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit v0

    return-void

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 636
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "className":Ljava/lang/String;
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "classPackage"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 667
    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 670
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 674
    .local v5, "status":I
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    .line 678
    .local v0, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    invoke-static {v0, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    const/4 v5, 0x1

    .line 682
    :cond_0
    iget v7, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    if-nez v7, :cond_3

    .line 683
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v3

    .line 684
    .local v3, "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    if-eqz v3, :cond_1

    .line 685
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v3, v6

    .line 686
    .local v2, "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-object v8, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const/4 v9, 0x1

    invoke-static {p0, v8, v10, v11, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v8

    if-nez v8, :cond_2

    .line 687
    const/4 v5, 0x2

    .line 688
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateStatus(I)Z

    .line 696
    .end local v2    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v3    # "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 705
    :goto_2
    return v5

    .line 685
    .restart local v2    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .restart local v3    # "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 694
    .end local v2    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v3    # "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 699
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 700
    .local v1, "fileIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v6, "EPI"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "EPI"

    .line 627
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 628
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 515
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 516
    .local v2, "isConnected":Z
    iget-boolean v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 517
    .local v3, "isFailover":Z
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 518
    .local v1, "isCellularConnection":Z
    iget-boolean v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 519
    .local v4, "isRoaming":Z
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 520
    .local v0, "isAtLeast3G":Z
    if-eqz p1, :cond_2

    .line 521
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 522
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 523
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 524
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    .line 531
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-ne v2, v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    if-ne v3, v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-ne v1, v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-ne v4, v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    if-eq v0, v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    .line 565
    return-void

    .line 526
    :cond_2
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 527
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 528
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 529
    invoke-direct {p0, v6, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    goto :goto_0
.end method

.method private updateNetworkType(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 464
    packed-switch p1, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    return-void

    .line 468
    :pswitch_1
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 469
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 470
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 473
    :pswitch_2
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 474
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 475
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 478
    :pswitch_3
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 479
    packed-switch p2, :pswitch_data_1

    .line 507
    :pswitch_4
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 508
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 509
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 485
    :pswitch_5
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 486
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 494
    :pswitch_6
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 495
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 503
    :pswitch_7
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 504
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filesize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v0, "expPath":Ljava/io/File;
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    const-string v2, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External media not mounted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1f3

    const-string v4, "external media is not yet mounted"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1238
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    const-string v2, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1e8

    const-string/jumbo v4, "requested destination file already exists"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1243
    :cond_1
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_2

    .line 1244
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1f2

    const-string v4, "insufficient space on external storage"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1247
    :cond_2
    return-object v1
.end method

.method public generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public abstract getAlarmReceiverClassName()Ljava/lang/String;
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    return v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkError"    # I

    .prologue
    .line 1255
    packed-switch p1, :pswitch_data_0

    .line 1272
    const-string/jumbo v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    .line 1257
    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    .line 1260
    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    .line 1263
    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    .line 1266
    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    .line 1269
    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 1255
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I
    .locals 3
    .param p1, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .prologue
    const/4 v1, 0x1

    .line 1169
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v2, :cond_3

    .line 1170
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-nez v2, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return v1

    .line 1172
    :cond_1
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    .line 1173
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-eqz v2, :cond_2

    .line 1174
    const/4 v1, 0x5

    goto :goto_0

    .line 1175
    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 1178
    const/4 v1, 0x6

    goto :goto_0

    .line 1181
    .end local v0    # "flags":I
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getSALT()[B
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    return v0
.end method

.method public handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z
    .locals 8
    .param p1, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .param p2, "index"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 923
    invoke-virtual {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v1

    .line 924
    .local v1, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    if-eqz v1, :cond_1

    .line 925
    iget-object v3, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 927
    .local v3, "oldFile":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 928
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 939
    .end local v3    # "oldFile":Ljava/lang/String;
    :goto_0
    return v5

    .line 933
    .restart local v3    # "oldFile":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "deleteFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 935
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 936
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 939
    .end local v0    # "deleteFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "oldFile":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p3, p4, p5, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public isWiFi()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyUpdateBytes(J)V
    .locals 21
    .param p1, "totalBytesSoFar"    # J

    .prologue
    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1293
    .local v16, "currentTime":J
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 1295
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    sub-long v18, v16, v6

    .line 1296
    .local v18, "timePassed":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    sub-long v14, p1, v6

    .line 1297
    .local v14, "bytesInSample":J
    long-to-float v5, v14

    move-wide/from16 v0, v18

    long-to-float v6, v0

    div-float v4, v5, v6

    .line 1298
    .local v4, "currentSpeedSample":F
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 1299
    const v5, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v4

    const v6, 0x3f7eb852    # 0.995f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    .line 1304
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    sub-long v6, v6, p1

    long-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    div-float/2addr v5, v6

    float-to-long v10, v5

    .line 1308
    .end local v4    # "currentSpeedSample":F
    .end local v14    # "bytesInSample":J
    .end local v18    # "timePassed":J
    .local v10, "timeRemaining":J
    :goto_1
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    .line 1309
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    .line 1310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    new-instance v5, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(JJJF)V

    invoke-virtual {v13, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 1317
    return-void

    .line 1302
    .end local v10    # "timeRemaining":J
    .restart local v4    # "currentSpeedSample":F
    .restart local v14    # "bytesInSample":J
    .restart local v18    # "timePassed":J
    :cond_0
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    goto :goto_0

    .line 1306
    .end local v4    # "currentSpeedSample":F
    .end local v14    # "bytesInSample":J
    .end local v18    # "timePassed":J
    :cond_1
    const-wide/16 v10, -0x1

    .restart local v10    # "timeRemaining":J
    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 395
    const-string v0, "LVLDL"

    const-string v1, "Service Bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClientUpdated(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "clientMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    .line 1338
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setMessenger(Landroid/os/Messenger;)V

    .line 1339
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 1186
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onCreate()V

    .line 1188
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1188
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1191
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1192
    .local v1, "applicationLabel":Ljava/lang/CharSequence;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-direct {v3, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationLabel":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1194
    :catch_0
    move-exception v2

    .line 1195
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 1165
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onDestroy()V

    .line 1166
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1009
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1013
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v6

    .line 1014
    .local v6, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    const-string v16, "EPI"

    .line 1015
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 1017
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_0

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    .line 1020
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1030
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1156
    :goto_1
    return-void

    .line 1021
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1154
    .end local v6    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    throw v16

    .line 1024
    .restart local v6    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .restart local v12    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_2
    const-string v16, "LVLDL"

    const-string v17, "Downloader started in bad state without notification intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    goto :goto_1

    .line 1036
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v9

    .line 1037
    .local v9, "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1038
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1039
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mFileCount:I

    .line 1040
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v8, v9, v16

    .line 1043
    .local v8, "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    move/from16 v18, v0

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1045
    iget-object v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1046
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 1047
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1051
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    move-wide/from16 v18, v0

    iget-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1052
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    move-wide/from16 v18, v0

    iget-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1040
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1056
    .end local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->pollNetworkState()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 1064
    new-instance v16, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/Service;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1065
    new-instance v10, Landroid/content/IntentFilter;

    const-string v16, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v10, "intentFilter":Landroid/content/IntentFilter;
    const-string v16, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1071
    .end local v10    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v8, v9, v16

    .line 1072
    .restart local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-wide v14, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1074
    .local v14, "startingCount":J
    iget v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    move/from16 v18, v0

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 1075
    new-instance v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v8, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V

    .line 1076
    .local v7, "dt":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1077
    const-wide/16 v18, 0x1388

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    .line 1078
    invoke-virtual {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->run()V

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1081
    .end local v7    # "dt":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
    :cond_6
    invoke-virtual {v6, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 1082
    const/4 v13, 0x0

    .line 1084
    .local v13, "setWakeWatchdog":Z
    iget v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 1138
    const/16 v11, 0x13

    .line 1141
    .local v11, "notifyStatus":I
    :goto_4
    if-eqz v13, :cond_8

    .line 1142
    const-wide/32 v16, 0xea60

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    .line 1147
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1154
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    goto/16 :goto_1

    .line 1087
    .end local v11    # "notifyStatus":I
    :sswitch_0
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1154
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    goto/16 :goto_1

    .line 1090
    :sswitch_1
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    move-wide/from16 v18, v0

    iget-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v14

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    .line 1071
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1096
    :sswitch_2
    const/16 v11, 0xd

    .line 1097
    .restart local v11    # "notifyStatus":I
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1098
    invoke-virtual {v6, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 1099
    const/4 v13, 0x1

    .line 1100
    goto :goto_4

    .line 1102
    .end local v11    # "notifyStatus":I
    :sswitch_3
    const/4 v11, 0x7

    .line 1103
    .restart local v11    # "notifyStatus":I
    goto :goto_4

    .line 1106
    .end local v11    # "notifyStatus":I
    :sswitch_4
    const/4 v11, 0x6

    .line 1107
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1108
    goto :goto_4

    .line 1112
    .end local v11    # "notifyStatus":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v16

    if-nez v16, :cond_7

    .line 1114
    const/16 v11, 0x8

    .line 1115
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1116
    goto/16 :goto_4

    .line 1119
    .end local v11    # "notifyStatus":I
    :cond_7
    const/16 v11, 0x9

    .line 1120
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1121
    goto/16 :goto_4

    .line 1123
    .end local v11    # "notifyStatus":I
    :sswitch_6
    const/16 v11, 0x12

    .line 1124
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1125
    goto/16 :goto_4

    .line 1128
    .end local v11    # "notifyStatus":I
    :sswitch_7
    const/16 v11, 0x11

    .line 1129
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1130
    goto/16 :goto_4

    .line 1133
    .end local v11    # "notifyStatus":I
    :sswitch_8
    const/16 v11, 0xe

    .line 1134
    .restart local v11    # "notifyStatus":I
    const/4 v13, 0x1

    .line 1135
    goto/16 :goto_4

    .line 1144
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    goto/16 :goto_5

    .line 1152
    .end local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v11    # "notifyStatus":I
    .end local v13    # "setWakeWatchdog":Z
    .end local v14    # "startingCount":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1154
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    goto/16 :goto_1

    .line 1084
    nop

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc8 -> :sswitch_1
        0x193 -> :sswitch_0
        0x1e7 -> :sswitch_2
        0x1ea -> :sswitch_6
        0x1f2 -> :sswitch_7
        0x1f3 -> :sswitch_8
    .end sparse-switch
.end method

.method pollNetworkState()V
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 572
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 575
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 578
    const-string v1, "LVLDL"

    const-string v2, "couldn\'t get connectivity manager to poll network state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 582
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 583
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkState(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method public requestAbortDownload()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 711
    const/16 v0, 0x1ea

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    .line 712
    return-void
.end method

.method public requestContinueDownload()V
    .locals 3

    .prologue
    .line 727
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 728
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 730
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v0, "fileIntent":Landroid/content/Intent;
    const-string v1, "EPI"

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 733
    return-void
.end method

.method public requestDownloadStatus()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->resendState()V

    .line 1333
    return-void
.end method

.method public requestPauseDownload()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 717
    const/16 v0, 0xc1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    .line 718
    return-void
.end method

.method public setDownloadFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 722
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFlags(I)Z

    .line 723
    return-void
.end method

.method protected shouldStop()Z
    .locals 2

    .prologue
    .line 1323
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    .line 1324
    .local v0, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    if-nez v1, :cond_0

    .line 1325
    const/4 v1, 0x1

    .line 1327
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateLVL(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 905
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 906
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    return-void
.end method
