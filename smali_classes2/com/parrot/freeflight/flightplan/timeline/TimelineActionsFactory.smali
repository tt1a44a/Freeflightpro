.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory;
.super Ljava/lang/Object;
.source "TimelineActionsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 7
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-static {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    .line 22
    .local v0, "family":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineActionsFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 31
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineLandingAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineLandingAction;-><init>()V

    aput-object v2, v1, v6

    const/4 v2, 0x4

    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;-><init>()V

    aput-object v3, v1, v2

    :goto_0
    return-object v1

    .line 24
    :pswitch_0
    new-array v1, v6, [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;-><init>()V

    aput-object v2, v1, v5

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
