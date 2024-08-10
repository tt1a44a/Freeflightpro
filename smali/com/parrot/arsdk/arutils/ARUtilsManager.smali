.class public Lcom/parrot/arsdk/arutils/ARUtilsManager;
.super Ljava/lang/Object;
.source "ARUtilsManager.java"


# static fields
.field public static final FTP_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final FTP_FLIGHTPLAN:I = 0x3d

.field private static final FTP_FLIGHTPLAN_SKY:I = 0xa1

.field private static final FTP_GENERIC:I = 0x15

.field private static final FTP_GENERIC_SKY:I = 0x79

.field private static final FTP_UPDATE:I = 0x33

.field private static final FTP_UPDATE_SKY:I = 0x97

.field private static final TAG:Ljava/lang/String; = "ARUtilsManager"


# instance fields
.field private mIsBLEFtpInited:Z

.field private mIsRFCommFtpInited:Z

.field private mIsWifiFtpInited:Z

.field private m_initOk:Z

.field private m_managerPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeStaticInit()Z

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 104
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    .line 105
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    .line 119
    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 120
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    .line 122
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 126
    :cond_0
    return-void
.end method

.method private native nativeBLEFtpConnectionCancel(J)I
.end method

.method private native nativeBLEFtpConnectionDisconnect(J)I
.end method

.method private native nativeBLEFtpConnectionReconnect(J)I
.end method

.method private native nativeBLEFtpConnectionReset(J)I
.end method

.method private native nativeBLEFtpDelete(JLjava/lang/String;)I
.end method

.method private native nativeBLEFtpGet(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private native nativeBLEFtpGetWithBuffer(JLjava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B
.end method

.method private native nativeBLEFtpIsConnectionCanceled(J)I
.end method

.method private native nativeBLEFtpList(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeBLEFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private native nativeBLEFtpRename(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeBLEFtpSize(JLjava/lang/String;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeCloseBLEFtp(J)V
.end method

.method private native nativeCloseRFCommFtp(J)V
.end method

.method private native nativeCloseWifiFtp(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeInitBLEFtp(JLcom/parrot/arsdk/arutils/ARUtilsBLEFtp;Ljava/util/concurrent/Semaphore;)I
.end method

.method private native nativeInitRFCommFtp(JLcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;Ljava/util/concurrent/Semaphore;)I
.end method

.method private native nativeInitWifiFtp(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeInitWifiFtpOverMux(JLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeRFCommFtpConnectionCancel(J)I
.end method

.method private native nativeRFCommFtpConnectionDisconnect(J)I
.end method

.method private native nativeRFCommFtpConnectionReconnect(J)I
.end method

.method private native nativeRFCommFtpConnectionReset(J)I
.end method

.method private native nativeRFCommFtpIsConnectionCanceled(J)I
.end method

.method private native nativeRFCommFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public BLEFtpConnectionCancel()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionCancel(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionDisconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionDisconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionReconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionReconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpConnectionReset()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpConnectionReset(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpDelete(Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpDelete(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpGet(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 508
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpGet(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpGetWithBuffer(Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B
    .locals 7
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p3, "progressArg"    # Ljava/lang/Object;

    .prologue
    .line 513
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpGetWithBuffer(JLjava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpIsConnectionCanceled()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpIsConnectionCanceled(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpListFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpList(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpPut(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "srcFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 503
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpRename(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpRename(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public BLEFtpSize(Ljava/lang/String;)D
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeBLEFtpSize(JLjava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public RFCommFtpConnectionCancel()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 633
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionCancel(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionDisconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 623
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionDisconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionReconnect()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionReconnect(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpConnectionReset()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 643
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpConnectionReset(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpIsConnectionCanceled()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 2

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpIsConnectionCanceled(J)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public RFCommFtpPut(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "srcFile"    # Ljava/lang/String;
    .param p3, "progressListener"    # Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;
    .param p4, "progressArg"    # Ljava/lang/Object;
    .param p5, "resume"    # Z

    .prologue
    .line 648
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeRFCommFtpPut(JLjava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arutils/ARUtilsFtpProgressListener;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 443
    .local v1, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 445
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 463
    :goto_0
    return-object v1

    .line 447
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v2, :cond_2

    .line 449
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 451
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->unregisterDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 455
    :cond_1
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseBLEFtp(J)V

    .line 456
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    goto :goto_0

    .line 460
    .end local v0    # "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    :cond_2
    const-string v2, "ARUtilsManager"

    const-string/jumbo v3, "we haven\'t successfully initBLEFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "device"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 251
    if-nez p2, :cond_0

    .line 252
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 277
    :goto_0
    return-object v0

    .line 257
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 273
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .local v0, "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 259
    .end local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 260
    .restart local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 262
    .end local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :pswitch_1
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .restart local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 264
    .end local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_1
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .restart local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 267
    .end local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_2
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 268
    .restart local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 270
    .end local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 271
    .restart local v0    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 599
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 601
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 618
    :goto_0
    return-object v0

    .line 603
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v2, :cond_2

    .line 605
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    move-result-object v1

    .line 606
    .local v1, "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->unregisterDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 610
    :cond_1
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseRFCommFtp(J)V

    .line 611
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    goto :goto_0

    .line 615
    .end local v1    # "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    :cond_2
    const-string v2, "ARUtilsManager"

    const-string/jumbo v3, "we haven\'t successfully initRFCommFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 4

    .prologue
    .line 333
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 334
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-eqz v2, :cond_0

    .line 336
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeCloseWifiFtp(J)I

    move-result v1

    .line 337
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 338
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 345
    .end local v1    # "intError":I
    :goto_0
    return-object v0

    .line 342
    :cond_0
    const-string v2, "ARUtilsManager"

    const-string/jumbo v3, "we haven\'t successfully initWifiFtp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    if-eqz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeDelete(J)I

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    .line 139
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getManager()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    return-wide v0
.end method

.method public initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 353
    iget-boolean v6, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v6, :cond_1

    .line 355
    const-string v4, "ARUtilsManager"

    const-string v5, "BLE FTP is already inited"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 412
    :cond_0
    :goto_0
    return-object v2

    .line 359
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 361
    .local v2, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v0, 0x0

    .line 364
    .local v0, "bleFtp":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    if-nez p1, :cond_2

    .line 366
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 369
    :cond_2
    if-nez p2, :cond_3

    .line 371
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 374
    :cond_3
    if-eqz p3, :cond_4

    rem-int/lit8 v6, p3, 0xa

    if-eq v6, v4, :cond_5

    .line 376
    :cond_4
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 379
    :cond_5
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_6

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth_le"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 384
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 387
    :cond_6
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_7

    .line 394
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_8

    .line 396
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p2, p3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z

    move-result v3

    .line 398
    .local v3, "registered":Z
    if-nez v3, :cond_8

    .line 400
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BLE_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 404
    .end local v3    # "registered":Z
    :cond_8
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v2, v6, :cond_9

    :goto_1
    iput-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    .line 406
    iget-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsBLEFtpInited:Z

    if-eqz v4, :cond_0

    .line 408
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 409
    .local v1, "cancelSem":Ljava/util/concurrent/Semaphore;
    iget-wide v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitBLEFtp(JLcom/parrot/arsdk/arutils/ARUtilsBLEFtp;Ljava/util/concurrent/Semaphore;)I

    goto :goto_0

    .end local v1    # "cancelSem":Ljava/util/concurrent/Semaphore;
    :cond_9
    move v4, v5

    .line 404
    goto :goto_1
.end method

.method public initFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "device"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p3, "destination"    # Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;
    .param p4, "type"    # Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    .prologue
    .line 180
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 181
    :cond_0
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 246
    :goto_0
    return-object v12

    .line 183
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v11

    .line 184
    .local v11, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v1

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    if-ne v1, v5, :cond_2

    const/4 v13, 0x1

    .line 185
    .local v13, "sky":Z
    :goto_1
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v11, v1, :cond_3

    const/4 v10, 0x1

    .line 186
    .local v10, "old_sky":Z
    :goto_2
    if-eqz v13, :cond_4

    if-nez v10, :cond_4

    const/4 v8, 0x1

    .line 187
    .local v8, "new_sky":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v1

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v1, v5, :cond_5

    const/4 v14, 0x1

    .line 190
    .local v14, "wifi":Z
    :goto_4
    if-nez v8, :cond_6

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 191
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0

    .line 184
    .end local v8    # "new_sky":Z
    .end local v10    # "old_sky":Z
    .end local v13    # "sky":Z
    .end local v14    # "wifi":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 185
    .restart local v13    # "sky":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 186
    .restart local v10    # "old_sky":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 187
    .restart local v8    # "new_sky":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 193
    .restart local v14    # "wifi":Z
    :cond_6
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_SKYCONTROLLER:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_7

    .line 195
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0

    .line 200
    :cond_7
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$arutils$ARUTILS_FTP_TYPE_ENUM:[I

    invoke-virtual/range {p4 .. p4}, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 211
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    goto :goto_0

    .line 202
    :pswitch_0
    if-eqz v8, :cond_8

    if-eqz v14, :cond_8

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_8

    const/16 v4, 0x79

    .line 216
    .local v4, "port":I
    :goto_5
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUtilsManager$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_NETWORK_TYPE_ENUM:[I

    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    .line 242
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .local v12, "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto :goto_0

    .line 202
    .end local v4    # "port":I
    .end local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_8
    const/16 v4, 0x15

    goto :goto_5

    .line 205
    :pswitch_1
    if-eqz v8, :cond_9

    if-eqz v14, :cond_9

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_9

    const/16 v4, 0x97

    .line 206
    .restart local v4    # "port":I
    :goto_6
    goto :goto_5

    .line 205
    .end local v4    # "port":I
    :cond_9
    const/16 v4, 0x33

    goto :goto_6

    .line 208
    :pswitch_2
    if-eqz v8, :cond_a

    if-eqz v14, :cond_a

    const/16 v4, 0xa1

    .line 209
    .restart local v4    # "port":I
    :goto_7
    goto :goto_5

    .line 208
    .end local v4    # "port":I
    :cond_a
    const/16 v4, 0x3d

    goto :goto_7

    .line 218
    .restart local v4    # "port":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 219
    .local v9, "ns":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v1

    const-string v5, "anonymous"

    const-string v6, ""

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v12

    .line 220
    .restart local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto/16 :goto_0

    .line 222
    .end local v9    # "ns":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :pswitch_4
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_b

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_UPDATE:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_b

    .line 224
    invoke-static/range {p1 .. p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initRFCommFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v12

    .restart local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto/16 :goto_0

    .line 226
    .end local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1, v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v12

    .line 227
    .restart local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto/16 :goto_0

    .line 229
    .end local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v7

    .line 230
    .local v7, "mux":Lcom/parrot/mux/Mux;
    if-eqz v7, :cond_d

    .line 231
    invoke-virtual {v7}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v2

    .line 232
    .local v2, "muxref":Lcom/parrot/mux/Mux$Ref;
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_c

    const-string v3, "drone"

    .line 233
    .local v3, "dest":Ljava/lang/String;
    :goto_8
    const-string v5, "anonymous"

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Lcom/parrot/mux/Mux$Ref;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v12

    .line 234
    .restart local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    invoke-virtual {v2}, Lcom/parrot/mux/Mux$Ref;->release()V

    goto/16 :goto_0

    .line 232
    .end local v3    # "dest":Ljava/lang/String;
    .end local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :cond_c
    const-string/jumbo v3, "skycontroller"

    goto :goto_8

    .line 237
    .end local v2    # "muxref":Lcom/parrot/mux/Mux$Ref;
    :cond_d
    const-string v1, "ARUtilsManager"

    const-string v5, "initFtp ARDISCOVERY_NETWORK_TYPE_USB failed, mux is null"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v12, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 240
    .restart local v12    # "ret":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initRFCommFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    iget-boolean v6, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v6, :cond_1

    .line 534
    const-string v4, "ARUtilsManager"

    const-string v5, "RFComm FTP is already inited"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 589
    :cond_0
    :goto_0
    return-object v1

    .line 538
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 539
    .local v1, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    const/4 v3, 0x0

    .line 541
    .local v3, "rfcommFtp":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    if-nez p1, :cond_2

    .line 543
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 546
    :cond_2
    if-nez p2, :cond_3

    .line 548
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 551
    :cond_3
    if-eqz p3, :cond_4

    rem-int/lit8 v6, p3, 0xa

    if-eq v6, v4, :cond_5

    .line 553
    :cond_4
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 556
    :cond_5
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_6

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 561
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 564
    :cond_6
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_7

    .line 571
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_8

    .line 573
    invoke-static {p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    move-result-object v3

    .line 574
    invoke-virtual {v3, p2, p3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z

    move-result v2

    .line 575
    .local v2, "registered":Z
    if-nez v2, :cond_8

    .line 577
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_RFCOMM_FAILED:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 581
    .end local v2    # "registered":Z
    :cond_8
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v1, v6, :cond_9

    :goto_1
    iput-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    .line 583
    iget-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsRFCommFtpInited:Z

    if-eqz v4, :cond_0

    .line 585
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 586
    .local v0, "cancelSem":Ljava/util/concurrent/Semaphore;
    iget-wide v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-direct {p0, v4, v5, v3, v0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitRFCommFtp(JLcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;Ljava/util/concurrent/Semaphore;)I

    goto :goto_0

    .end local v0    # "cancelSem":Ljava/util/concurrent/Semaphore;
    :cond_9
    move v4, v5

    .line 581
    goto :goto_1
.end method

.method public initWifiFtp(Lcom/parrot/mux/Mux$Ref;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 11
    .param p1, "muxRef"    # Lcom/parrot/mux/Mux$Ref;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v1, "ARUtilsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWifiFtp on mux, port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 315
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-nez v1, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    .line 317
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    invoke-virtual {p1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v6

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitWifiFtpOverMux(JLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 318
    .local v10, "intError":I
    invoke-static {v10}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    .line 325
    .end local v10    # "intError":I
    :goto_1
    return-object v0

    .line 319
    .restart local v10    # "intError":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    .end local v10    # "intError":I
    :cond_1
    const-string v1, "ARUtilsManager"

    const-string/jumbo v2, "wifi FTP is already inited"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initWifiFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 9
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v1, "ARUtilsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWifiFtp on ip:port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 288
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    sget-object v0, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 304
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    if-nez v1, :cond_2

    .line 294
    iget-wide v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->nativeInitWifiFtp(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 295
    .local v8, "intError":I
    invoke-static {v8}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 297
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->mIsWifiFtpInited:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 301
    .end local v8    # "intError":I
    :cond_2
    const-string v1, "ARUtilsManager"

    const-string/jumbo v2, "wifi FTP is already inited"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsManager;->m_initOk:Z

    return v0
.end method
