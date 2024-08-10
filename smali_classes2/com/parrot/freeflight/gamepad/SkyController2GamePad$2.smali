.class Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;
.super Ljava/lang/Object;
.source "SkyController2GamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoystickEvent(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;II)Z
    .locals 8
    .param p1, "leftJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rightJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "topLeftJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "topRightJoystickState"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "min"    # I
    .param p6, "max"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 55
    const-string v1, "FF4.GamePad"

    const-string v2, "onJoystickEvent [%s, %s, %s, %s] in range [%d, %d])"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    iget v1, v1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mFilterType:I

    if-ne v1, v7, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "updated":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 66
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->consumed()V

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 68
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getYAxisValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 67
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->notifyJoystickEvent(FFFF)Z

    move-result v0

    .line 70
    :cond_3
    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    invoke-virtual {p3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->getXAxisValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->notifyTriggerEvent(FF)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method
