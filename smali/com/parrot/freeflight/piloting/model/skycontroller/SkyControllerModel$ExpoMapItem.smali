.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpoMapItem"
.end annotation


# instance fields
.field public final axis:I

.field public final expo:I

.field public final product:S


# direct methods
.method public constructor <init>(SII)V
    .locals 0
    .param p1, "product"    # S
    .param p2, "axis"    # I
    .param p3, "expo"    # I

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-short p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->product:S

    .line 501
    iput p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->axis:I

    .line 502
    iput p3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;->expo:I

    .line 503
    return-void
.end method
