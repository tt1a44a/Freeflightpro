.class Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GrabbingState"
.end annotation


# instance fields
.field private mGrabbedAxes:I

.field private mGrabbedButtons:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;-><init>()V

    return-void
.end method


# virtual methods
.method public update(II)Z
    .locals 1
    .param p1, "grabbedButtons"    # I
    .param p2, "grabbedAxes"    # I

    .prologue
    .line 535
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;->mGrabbedButtons:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;->mGrabbedAxes:I

    if-eq v0, p2, :cond_1

    .line 536
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;->mGrabbedButtons:I

    .line 537
    iput p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;->mGrabbedAxes:I

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
