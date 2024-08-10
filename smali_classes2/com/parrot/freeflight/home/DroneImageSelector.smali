.class public Lcom/parrot/freeflight/home/DroneImageSelector;
.super Ljava/lang/Object;
.source "DroneImageSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 15
    sget-object v1, Lcom/parrot/freeflight/home/DroneImageSelector$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 31
    const v0, 0x7f0704fa

    .line 34
    .local v0, "resId":I
    :goto_0
    return v0

    .line 18
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f0704fd

    .line 19
    .restart local v0    # "resId":I
    goto :goto_0

    .line 22
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f0704ff

    .line 23
    .restart local v0    # "resId":I
    goto :goto_0

    .line 26
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f0704fe

    .line 27
    .restart local v0    # "resId":I
    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMyFlightsImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 41
    sget-object v1, Lcom/parrot/freeflight/home/DroneImageSelector$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 54
    const v0, 0x7f0704fa

    .line 57
    .local v0, "resId":I
    :goto_0
    return v0

    .line 44
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f0704fd

    .line 45
    .restart local v0    # "resId":I
    goto :goto_0

    .line 47
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f0704ff

    .line 48
    .restart local v0    # "resId":I
    goto :goto_0

    .line 50
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x7f0704fe

    .line 51
    .restart local v0    # "resId":I
    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
