.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AxisMappingItem"
.end annotation


# instance fields
.field public final action:I

.field public final axis:I

.field public final buttons:I

.field public final productId:S

.field public final uuid:I


# direct methods
.method public constructor <init>(ISIII)V
    .locals 0
    .param p1, "uuid"    # I
    .param p2, "productId"    # S
    .param p3, "action"    # I
    .param p4, "axis"    # I
    .param p5, "buttons"    # I

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->uuid:I

    .line 569
    iput-short p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->productId:S

    .line 570
    iput p3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->action:I

    .line 571
    iput p4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->axis:I

    .line 572
    iput p5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;->buttons:I

    .line 573
    return-void
.end method
