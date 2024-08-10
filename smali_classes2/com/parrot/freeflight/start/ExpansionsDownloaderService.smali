.class public Lcom/parrot/freeflight/start/ExpansionsDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ExpansionsDownloaderService.java"


# static fields
.field private static SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/start/ExpansionsDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        -0x24t
        0x2dt
        -0x75t
        -0x1ct
        -0x68t
        0x5at
        0x24t
        0x3dt
        0x25t
        0x18t
        -0x2at
        0x67t
        -0x56t
        0x11t
        0x50t
        0x3et
        -0x60t
        0x65t
        0xat
        -0x21t
        0x52t
        -0x58t
        0x2ft
        0x60t
        0x1t
        0x40t
        0x51t
        0x5dt
        -0x14t
        0x26t
        -0x1et
        -0x46t
        0xbt
        -0x28t
        -0x4at
        -0x13t
        0x45t
        -0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/parrot/freeflight/start/ExpansionsDownloaderAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/parrot/freeflight/purchase/util/BillingManager;->getInAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/freeflight/start/ExpansionsDownloaderService;->SALT:[B

    return-object v0
.end method
