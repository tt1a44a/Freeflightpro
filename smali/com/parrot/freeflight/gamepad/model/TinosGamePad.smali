.class public Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
.super Lcom/parrot/freeflight/gamepad/GamePad;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;


# static fields
.field private static final HASH_FIELD:I = 0x1f

.field private static final HASH_START:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TinosGamePad"


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mButtonsResIds:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Lcom/parrot/freeflight3/OnRemoteConnectionListener;

.field private mCsrVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMcuVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteBatteryListener:Lcom/parrot/freeflight3/OnRemoteBatteryListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteController:Lcom/parrot/freeflight3/RemoteController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteInfoListener:Lcom/parrot/freeflight3/OnRemoteInfosListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSerialNumber:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTinosInputListener:Lcom/parrot/freeflight3/OnRemoteInputListener;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V
    .locals 2
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;-><init>(II)V

    .line 45
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mTinosInputListener:Lcom/parrot/freeflight3/OnRemoteInputListener;

    .line 58
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$2;-><init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mConnectionListener:Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;-><init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteBatteryListener:Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;-><init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteInfoListener:Lcom/parrot/freeflight3/OnRemoteInfosListener;

    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    new-instance v0, Lcom/parrot/freeflight3/RemoteController;

    invoke-direct {v0, p2}, Lcom/parrot/freeflight3/RemoteController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    .line 110
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->createResourcesMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mButtonsResIds:Ljava/util/Map;

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mConnectionListener:Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->addConnectionListener(Lcom/parrot/freeflight3/OnRemoteConnectionListener;)V

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteBatteryListener:Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->addBatteryListener(Lcom/parrot/freeflight3/OnRemoteBatteryListener;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mTinosInputListener:Lcom/parrot/freeflight3/OnRemoteInputListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->addInputListener(Lcom/parrot/freeflight3/OnRemoteInputListener;)V

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteInfoListener:Lcom/parrot/freeflight3/OnRemoteInfosListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->addInfoListener(Lcom/parrot/freeflight3/OnRemoteInfosListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->convertTinosToAndroidKey(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->notifyStateChange()V

    return-void
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mSerialNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mCsrVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mMcuVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->scale(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;FFFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->notifyJoystickEvent(FFFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mState:I

    return p1
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mState:I

    return p1
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->notifyStateChange()V

    return-void
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBatteryLevel:I

    return p1
.end method

.method private convertTinosToAndroidKey(I)I
    .locals 1
    .param p1, "tinosCode"    # I

    .prologue
    const/16 v0, 0xbc

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    :pswitch_0
    return v0

    .line 272
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 276
    :pswitch_2
    const/16 v0, 0xbd

    goto :goto_0

    .line 278
    :pswitch_3
    const/16 v0, 0xbe

    goto :goto_0

    .line 280
    :pswitch_4
    const/16 v0, 0xbf

    goto :goto_0

    .line 282
    :pswitch_5
    const/16 v0, 0x6a

    goto :goto_0

    .line 284
    :pswitch_6
    const/16 v0, 0x6b

    goto :goto_0

    .line 286
    :pswitch_7
    const/16 v0, 0x67

    goto :goto_0

    .line 288
    :pswitch_8
    const/16 v0, 0x69

    goto :goto_0

    .line 290
    :pswitch_9
    const/16 v0, 0x66

    goto :goto_0

    .line 292
    :pswitch_a
    const/16 v0, 0x68

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private createResourcesMap()Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v0, "resIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "5"

    const v2, 0x7f0703eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "3"

    const v2, 0x7f0703de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "4"

    const v2, 0x7f0703dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private scale(I)F
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 309
    int-to-float v0, p1

    const/high16 v1, 0x42fe0000    # 127.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->close()V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mConnectionListener:Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->removeConnectionListener(Lcom/parrot/freeflight3/OnRemoteConnectionListener;)V

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mTinosInputListener:Lcom/parrot/freeflight3/OnRemoteInputListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->removeInputListener(Lcom/parrot/freeflight3/OnRemoteInputListener;)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteBatteryListener:Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->removeBatteryListener(Lcom/parrot/freeflight3/OnRemoteBatteryListener;)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteInfoListener:Lcom/parrot/freeflight3/OnRemoteInfosListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->removeInfoListener(Lcom/parrot/freeflight3/OnRemoteInfosListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/RemoteController;->disconnect()V

    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 316
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 321
    :goto_0
    return v1

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 319
    check-cast v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .line 321
    .local v0, "bleRemote":Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 3
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "buttonName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v2, "KEYCODE_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const-string v2, "KEYCODE_MEDIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KEYCODE_VOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    :cond_0
    const-string v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 207
    const-string v0, "UNKNOW"

    .line 209
    :cond_2
    return-object v0

    .line 200
    :cond_3
    :try_start_1
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCsrVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mCsrVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mCsrVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDpadName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    const-string v0, "DPAD"

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 155
    const-string v0, ""

    return-object v0
.end method

.method public getLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    const-string v0, "J1"

    return-object v0
.end method

.method public getLeftTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 245
    const-string v0, "L2"

    return-object v0
.end method

.method public getMappingImageId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 187
    const v0, 0x7f07051f

    return v0
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mMcuVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mMcuVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceForButton(Ljava/lang/String;)I
    .locals 1
    .param p1, "buttonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mButtonsResIds:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->getResourceForName(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getResourceForTrigger(Ljava/lang/String;)I
    .locals 1
    .param p1, "triggerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public getRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 227
    const-string v0, "J2"

    return-object v0
.end method

.method public getRightTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 251
    const-string v0, "R2"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    const-string v0, ""

    return-object v0
.end method

.method public getSerialVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mSerialNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 161
    const-string v0, ""

    return-object v0
.end method

.method public getTopLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 233
    const-string v0, "J3"

    return-object v0
.end method

.method public getTopRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    const-string v0, "J4"

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 328
    const/16 v0, 0x11

    .line 331
    .local v0, "result":I
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 333
    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->mRemoteController:Lcom/parrot/freeflight3/RemoteController;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/RemoteController;->disconnect()V

    goto :goto_0
.end method
