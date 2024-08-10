.class public Lcom/parrot/freeflight/blackbox/BlackboxManager;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;
.implements Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;


# static fields
.field public static final BLACKBOX_VERSION:Ljava/lang/String; = "1.0.4"

.field public static final DIRECTORY_NAME:Ljava/lang/String; = "Blackbox"

.field private static final MAX_SIZE_ALLOWED:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "BlackboxManager"


# instance fields
.field private final mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlackboxRecorder:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlackboxUploader:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBlackboxWriter:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnected:Z

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInternetAvailable:Z

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$1;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 80
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$2;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 98
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$3;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 115
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 139
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$5;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 149
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;-><init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 162
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 164
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 165
    iput-object p5, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 166
    new-instance v0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p4, p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$RecordListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxRecorder:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .line 167
    new-instance v0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxWriter:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;

    .line 168
    new-instance v0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxUploader:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxRecorder:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/blackbox/BlackboxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mDroneConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/core/model/DroneModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->shouldRecordDroneFlight(Lcom/parrot/freeflight/core/model/DroneModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/blackbox/BlackboxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetAvailable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->launchUploader()V

    return-void
.end method

.method private checkBlackboxDirectorySize()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xa00000

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "Blackbox"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v0, "blackboxDirectory":Ljava/io/File;
    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->createBlackboxDirectory(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 227
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 228
    .local v6, "totalSize":J
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v1

    .local v5, "length":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 229
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_0
    cmp-long v8, v6, v10

    if-lez v8, :cond_2

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 233
    const/4 v4, 0x0

    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_2

    cmp-long v8, v6, v10

    if-lez v8, :cond_2

    .line 234
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 235
    .local v2, "fileSize":J
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 236
    sub-long/2addr v6, v2

    .line 233
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "fileSize":J
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "totalSize":J
    :cond_2
    return-void
.end method

.method public static createBlackboxDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "directoryFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method private launchUploader()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxUploader:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;->tryUploadingFiles()V

    .line 206
    :cond_0
    return-void
.end method

.method private shouldRecordDroneFlight(Lcom/parrot/freeflight/core/model/DroneModel;)Z
    .locals 2
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v0

    .line 190
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 199
    .end local v0    # "type":I
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 196
    .restart local v0    # "type":I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static sortFilesByCreationDate([Ljava/io/File;)V
    .locals 1
    .param p0, "files"    # [Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    new-instance v0, Lcom/parrot/freeflight/blackbox/BlackboxManager$7;

    invoke-direct {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager$7;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 276
    return-void
.end method


# virtual methods
.method public onFileWritten(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->checkBlackboxDirectorySize()V

    .line 220
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->launchUploader()V

    .line 221
    return-void
.end method

.method public onRecordEntriesAvailable(Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;)V
    .locals 2
    .param p1, "header"    # Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/blackbox/LimitedList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/blackbox/recorder/entries/Header;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;",
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "dataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .local p3, "pacedEntries":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/parrot/freeflight/blackbox/LimitedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxWriter:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;->createEntryFile(Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;)V

    .line 215
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 176
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mBlackboxRecorder:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->stopRecording()V

    .line 180
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mAcademyListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager;->mRemoteCtrlStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 184
    return-void
.end method
