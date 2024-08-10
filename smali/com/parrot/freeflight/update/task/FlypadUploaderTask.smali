.class public Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
.super Lcom/parrot/freeflight/update/task/UploaderTask;
.source "FlypadUploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/FlypadUploaderTask$Step;
    }
.end annotation


# static fields
.field private static final CSR_TMP_FILE_NAME:Ljava/lang/String; = "CSR_Application_update.img"

.field private static final CSR_UPDATE_POURCENT:I = 0x50

.field private static final MCU_TMP_FILE_NAME:Ljava/lang/String; = "MCU_Application_BLE_update.bin"

.field public static final STEP_CSR:I = 0x0

.field public static final STEP_MCU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FlypadUploaderTask"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCsrFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExternalDirectory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMcuFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStep:I

.field private final mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

.field private mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flypad"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/UploaderTask;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mStep:I

    .line 210
    new-instance v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;-><init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .line 81
    iput-object p3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 83
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mHandler:Landroid/os/Handler;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mExternalDirectory:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mStep:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->notifyOnFinish(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
    .param p1, "x1"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/McuUpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
    .param p1, "x1"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    return-object v0
.end method

.method private clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "csr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    .end local v0    # "csr":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 175
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "mcu":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    .end local v1    # "mcu":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->release()V

    .line 181
    iput-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->release()V

    .line 185
    iput-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    .line 187
    :cond_3
    return-void
.end method

.method private createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "plfFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "plfFolder"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v4, "plfFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    new-instance v2, Ljava/io/File;

    const-string v6, "%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v2, "plfDeviceFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 198
    .local v1, "files":[Ljava/io/File;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".plf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    move-object v3, v0

    .line 206
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_0
    return-object v3

    .line 198
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "plfDeviceFolder":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private notifyOnFinish(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->clean()V

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;-><init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->cancel(Z)Z

    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->clean()V

    .line 166
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mStep:I

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 147
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mStep:I

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    iget-object v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->connect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->doInBackground([Ljava/lang/Void;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 0
    .param p1, "result"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .prologue
    .line 158
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->onCancelled(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 92
    const-string v2, "FlypadUploaderTask"

    const-string/jumbo v3, "onPreExecute: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->createUpdaterManager()Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 96
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->getPlfFile(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "plfFile":Ljava/io/File;
    const-string v2, "FlypadUploaderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreExecute: plfFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v0, :cond_1

    .line 100
    const-string v2, "FlypadUploaderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreExecute: plfFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mExternalDirectory:Ljava/lang/String;

    const-string v4, "CSR_Application_update.img"

    invoke-static {v2, v3, v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->extractUnixFileFromPlf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 103
    .local v1, "ret":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mExternalDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CSR_Application_update.img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrFilePath:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdaterManager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mExternalDirectory:Ljava/lang/String;

    const-string v4, "MCU_Application_BLE_update.bin"

    invoke-static {v2, v3, v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->extractUnixFileFromPlf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 109
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v2, :cond_2

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mExternalDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MCU_Application_BLE_update.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuFilePath:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->setSelected(Z)V

    .line 113
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->forget(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCurrentFlypad:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->close()V

    .line 116
    new-instance v2, Lcom/parrot/freeflight3/update/CsrUpdateManager;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrFilePath:Ljava/lang/String;

    const v5, 0x7f10000b

    iget-object v6, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/parrot/freeflight3/update/CsrUpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/parrot/freeflight3/update/OnRemoteUpdateListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mCsrUpdateManager:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .line 118
    new-instance v2, Lcom/parrot/freeflight3/update/McuUpdateManager;

    iget-object v3, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    invoke-direct {v2, v3, v4, v5}, Lcom/parrot/freeflight3/update/McuUpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->mMcuUpdateManager:Lcom/parrot/freeflight3/update/McuUpdateManager;

    .line 125
    .end local v1    # "ret":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v1    # "ret":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->cancel(Z)Z

    .line 122
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->notifyOnFinish(Z)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V
    .locals 0
    .param p1, "values"    # [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    .prologue
    .line 153
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->onProgressUpdate([Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;)V

    return-void
.end method
