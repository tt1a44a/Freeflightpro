.class public Lcom/parrot/freeflight/user/UserProductFactory;
.super Ljava/lang/Object;
.source "UserProductFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;)Lcom/parrot/freeflight/user/UserProduct;
    .locals 1
    .param p0, "type"    # I
    .param p1, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    invoke-static {p1}, Lcom/parrot/freeflight/user/UserDrone;->create(Ljava/lang/String;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v0

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-static {p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->create(Ljava/lang/String;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    goto :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
