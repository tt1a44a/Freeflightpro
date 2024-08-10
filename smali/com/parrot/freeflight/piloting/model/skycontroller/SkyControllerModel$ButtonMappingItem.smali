.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonMappingItem"
.end annotation


# instance fields
.field public final action:I

.field public final buttons:I

.field public final productId:S

.field public final uuid:I


# direct methods
.method public constructor <init>(ISII)V
    .locals 0
    .param p1, "uuid"    # I
    .param p2, "productId"    # S
    .param p3, "action"    # I
    .param p4, "buttons"    # I

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->uuid:I

    .line 554
    iput-short p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->productId:S

    .line 555
    iput p3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->action:I

    .line 556
    iput p4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;->buttons:I

    .line 557
    return-void
.end method
