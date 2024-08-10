.class public Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
.super Ljava/lang/Object;
.source "FtpNetworkHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FtpHandler"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDestination:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFtpType:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "destination"    # Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "ftpType"    # Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 29
    iput-object p3, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mDestination:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    .line 30
    iput-object p4, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mFtpType:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    .line 31
    return-void
.end method


# virtual methods
.method public varargs close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V
    .locals 5
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 60
    .local v0, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v3, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0, v3, v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-void
.end method

.method public varargs init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 8
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 43
    .local v1, "result":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 44
    .local v0, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v4, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mDestination:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    iget-object v7, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;->mFtpType:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initFtp(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v1

    .line 45
    sget-object v4, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v1, v4, :cond_1

    .line 50
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-object v1

    .line 43
    .restart local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
