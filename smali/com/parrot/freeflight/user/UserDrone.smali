.class public Lcom/parrot/freeflight/user/UserDrone;
.super Lcom/parrot/freeflight/user/UserProduct;
.source "UserDrone.java"


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "shouldSave"    # Z
    .param p5, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "updateState"    # I

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/parrot/freeflight/user/UserProduct;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 0
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/user/UserProduct;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 13
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 1
    .param p0, "droneInfo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/parrot/freeflight/user/UserDrone;->create(ILjava/lang/String;)Lcom/parrot/freeflight/user/UserProduct;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/user/UserDrone;

    return-object v0
.end method


# virtual methods
.method public allowFpv()Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserDrone;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserDrone;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserDrone;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserDrone;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
